#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_7__ {int strict_std_compliance; } ;
struct TYPE_6__ {int channel_count; int height; int width; int compression; TYPE_2__* avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/ * palette; int /*<<< orphan*/  color_mode; void* channel_depth; } ;
typedef  TYPE_1__ PSDContext ;

/* Variables and functions */
 int AVERROR_EXPERIMENTAL ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int,int) ; 
 int FF_COMPLIANCE_EXPERIMENTAL ; 
 int HAVE_BIGENDIAN ; 
 int FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  PSD_BITMAP ; 
 int /*<<< orphan*/  PSD_CMYK ; 
 int /*<<< orphan*/  PSD_DUOTONE ; 
 int /*<<< orphan*/  PSD_GRAYSCALE ; 
 int /*<<< orphan*/  PSD_INDEXED ; 
 int /*<<< orphan*/  PSD_LAB ; 
 int /*<<< orphan*/  PSD_MULTICHANNEL ; 
 int /*<<< orphan*/  PSD_RGB ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(PSDContext * s)
{
    int signature, version, color_mode;
    int64_t len_section;
    int ret = 0;

    if (FUNC6(&s->gb) < 30) {/* File header section + color map data section length */
        FUNC2(s->avctx, AV_LOG_ERROR, "Header too short to parse.\n");
        return AVERROR_INVALIDDATA;
    }

    signature = FUNC8(&s->gb);
    if (signature != FUNC1('8','B','P','S')) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Wrong signature %d.\n", signature);
        return AVERROR_INVALIDDATA;
    }

    version = FUNC4(&s->gb);
    if (version != 1) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Wrong version %d.\n", version);
        return AVERROR_INVALIDDATA;
    }

    FUNC9(&s->gb, 6);/* reserved */

    s->channel_count = FUNC4(&s->gb);
    if ((s->channel_count < 1) || (s->channel_count > 56)) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Invalid channel count %d.\n", s->channel_count);
        return AVERROR_INVALIDDATA;
    }

    s->height = FUNC5(&s->gb);

    if ((s->height > 30000) && (s->avctx->strict_std_compliance > FF_COMPLIANCE_EXPERIMENTAL)) {
        FUNC2(s->avctx, AV_LOG_ERROR,
               "Height > 30000 is experimental, add "
               "'-strict %d' if you want to try to decode the picture.\n",
               FF_COMPLIANCE_EXPERIMENTAL);
        return AVERROR_EXPERIMENTAL;
    }

    s->width = FUNC5(&s->gb);
    if ((s->width > 30000) && (s->avctx->strict_std_compliance > FF_COMPLIANCE_EXPERIMENTAL)) {
        FUNC2(s->avctx, AV_LOG_ERROR,
               "Width > 30000 is experimental, add "
               "'-strict %d' if you want to try to decode the picture.\n",
               FF_COMPLIANCE_EXPERIMENTAL);
        return AVERROR_EXPERIMENTAL;
    }

    if ((ret = FUNC10(s->avctx, s->width, s->height)) < 0)
        return ret;

    s->channel_depth = FUNC4(&s->gb);

    color_mode = FUNC4(&s->gb);
    switch (color_mode) {
    case 0:
        s->color_mode = PSD_BITMAP;
        break;
    case 1:
        s->color_mode = PSD_GRAYSCALE;
        break;
    case 2:
        s->color_mode = PSD_INDEXED;
        break;
    case 3:
        s->color_mode = PSD_RGB;
        break;
    case 4:
        s->color_mode = PSD_CMYK;
        break;
    case 7:
        s->color_mode = PSD_MULTICHANNEL;
        break;
    case 8:
        s->color_mode = PSD_DUOTONE;
        break;
    case 9:
        s->color_mode = PSD_LAB;
        break;
    default:
        FUNC2(s->avctx, AV_LOG_ERROR, "Unknown color mode %d.\n", color_mode);
        return AVERROR_INVALIDDATA;
    }

    /* color map data */
    len_section = FUNC5(&s->gb);
    if (len_section < 0) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Negative size for color map data section.\n");
        return AVERROR_INVALIDDATA;
    }

    if (FUNC6(&s->gb) < (len_section + 4)) { /* section and len next section */
        FUNC2(s->avctx, AV_LOG_ERROR, "Incomplete file.\n");
        return AVERROR_INVALIDDATA;
    }
    if (len_section) {
        int i,j;
        FUNC11(s->palette, 0xff, AVPALETTE_SIZE);
        for (j = HAVE_BIGENDIAN; j < 3 + HAVE_BIGENDIAN; j++)
            for (i = 0; i < FUNC0(256, len_section / 3); i++)
                s->palette[i * 4 + (HAVE_BIGENDIAN ? j : 2 - j)] = FUNC7(&s->gb);
        len_section -= i * 3;
    }
    FUNC9(&s->gb, len_section);

    /* image ressources */
    len_section = FUNC5(&s->gb);
    if (len_section < 0) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Negative size for image ressources section.\n");
        return AVERROR_INVALIDDATA;
    }

    if (FUNC6(&s->gb) < (len_section + 4)) { /* section and len next section */
        FUNC2(s->avctx, AV_LOG_ERROR, "Incomplete file.\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC9(&s->gb, len_section);

    /* layers and masks */
    len_section = FUNC5(&s->gb);
    if (len_section < 0) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Negative size for layers and masks data section.\n");
        return AVERROR_INVALIDDATA;
    }

    if (FUNC6(&s->gb) < len_section) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Incomplete file.\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC9(&s->gb, len_section);

    /* image section */
    if (FUNC6(&s->gb) < 2) {
        FUNC2(s->avctx, AV_LOG_ERROR, "File without image data section.\n");
        return AVERROR_INVALIDDATA;
    }

    s->compression = FUNC4(&s->gb);
    switch (s->compression) {
    case 0:
    case 1:
        break;
    case 2:
        FUNC3(s->avctx, "ZIP without predictor compression");
        return AVERROR_PATCHWELCOME;
    case 3:
        FUNC3(s->avctx, "ZIP with predictor compression");
        return AVERROR_PATCHWELCOME;
    default:
        FUNC2(s->avctx, AV_LOG_ERROR, "Unknown compression %d.\n", s->compression);
        return AVERROR_INVALIDDATA;
    }

    return ret;
}