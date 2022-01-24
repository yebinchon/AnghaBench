#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ebml_master ;
struct TYPE_7__ {scalar_t__ color_trc; scalar_t__ color_space; scalar_t__ color_primaries; scalar_t__ color_range; scalar_t__ chroma_location; } ;
struct TYPE_6__ {int MaxCLL; int MaxFALL; } ;
struct TYPE_5__ {int /*<<< orphan*/  min_luminance; int /*<<< orphan*/  max_luminance; scalar_t__ has_luminance; int /*<<< orphan*/ * white_point; int /*<<< orphan*/ ** display_primaries; scalar_t__ has_primaries; } ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_1__ AVMasteringDisplayMetadata ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVContentLightMetadata ;
typedef  TYPE_3__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AVCHROMA_LOC_TOP ; 
 scalar_t__ AVCHROMA_LOC_UNSPECIFIED ; 
 scalar_t__ AVCOL_PRI_NB ; 
 scalar_t__ AVCOL_PRI_UNSPECIFIED ; 
 scalar_t__ AVCOL_RANGE_NB ; 
 scalar_t__ AVCOL_RANGE_UNSPECIFIED ; 
 scalar_t__ AVCOL_SPC_NB ; 
 scalar_t__ AVCOL_SPC_UNSPECIFIED ; 
 scalar_t__ AVCOL_TRC_NB ; 
 scalar_t__ AVCOL_TRC_UNSPECIFIED ; 
 int /*<<< orphan*/  AV_PKT_DATA_CONTENT_LIGHT_LEVEL ; 
 int /*<<< orphan*/  AV_PKT_DATA_MASTERING_DISPLAY_METADATA ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLORCHROMASITINGHORZ ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLORCHROMASITINGVERT ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLORMASTERINGMETA ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLORMATRIXCOEFF ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLORMAXCLL ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLORMAXFALL ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLORPRIMARIES ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLORRANGE ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLORTRANSFERCHARACTERISTICS ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_BX ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_BY ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_GX ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_GY ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_LUMINANCEMAX ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_LUMINANCEMIN ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_RX ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_RY ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_WHITEX ; 
 int /*<<< orphan*/  MATROSKA_ID_VIDEOCOLOR_WHITEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(AVIOContext *pb, AVCodecParameters *par, AVStream *st) {
    AVIOContext *dyn_cp;
    uint8_t *colorinfo_ptr;
    int side_data_size = 0;
    int ret, colorinfo_size;
    const uint8_t *side_data;

    ret = FUNC5(&dyn_cp);
    if (ret < 0)
        return ret;

    if (par->color_trc != AVCOL_TRC_UNSPECIFIED &&
        par->color_trc < AVCOL_TRC_NB) {
        FUNC9(dyn_cp, MATROSKA_ID_VIDEOCOLORTRANSFERCHARACTERISTICS,
                      par->color_trc);
    }
    if (par->color_space != AVCOL_SPC_UNSPECIFIED &&
        par->color_space < AVCOL_SPC_NB) {
        FUNC9(dyn_cp, MATROSKA_ID_VIDEOCOLORMATRIXCOEFF, par->color_space);
    }
    if (par->color_primaries != AVCOL_PRI_UNSPECIFIED &&
        par->color_primaries < AVCOL_PRI_NB) {
        FUNC9(dyn_cp, MATROSKA_ID_VIDEOCOLORPRIMARIES, par->color_primaries);
    }
    if (par->color_range != AVCOL_RANGE_UNSPECIFIED &&
        par->color_range < AVCOL_RANGE_NB) {
        FUNC9(dyn_cp, MATROSKA_ID_VIDEOCOLORRANGE, par->color_range);
    }
    if (par->chroma_location != AVCHROMA_LOC_UNSPECIFIED &&
        par->chroma_location <= AVCHROMA_LOC_TOP) {
        int xpos, ypos;

        FUNC3(&xpos, &ypos, par->chroma_location);
        FUNC9(dyn_cp, MATROSKA_ID_VIDEOCOLORCHROMASITINGHORZ, (xpos >> 7) + 1);
        FUNC9(dyn_cp, MATROSKA_ID_VIDEOCOLORCHROMASITINGVERT, (ypos >> 7) + 1);
    }

    side_data = FUNC2(st, AV_PKT_DATA_CONTENT_LIGHT_LEVEL,
                                        &side_data_size);
    if (side_data_size) {
        const AVContentLightMetadata *metadata =
            (const AVContentLightMetadata*)side_data;
        FUNC9(dyn_cp, MATROSKA_ID_VIDEOCOLORMAXCLL,  metadata->MaxCLL);
        FUNC9(dyn_cp, MATROSKA_ID_VIDEOCOLORMAXFALL, metadata->MaxFALL);
    }

    side_data = FUNC2(st, AV_PKT_DATA_MASTERING_DISPLAY_METADATA,
                                        &side_data_size);
    if (side_data_size == sizeof(AVMasteringDisplayMetadata)) {
        ebml_master meta_element = FUNC10(
            dyn_cp, MATROSKA_ID_VIDEOCOLORMASTERINGMETA, 0);
        const AVMasteringDisplayMetadata *metadata =
            (const AVMasteringDisplayMetadata*)side_data;
        if (metadata->has_primaries) {
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_RX,
                           FUNC1(metadata->display_primaries[0][0]));
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_RY,
                           FUNC1(metadata->display_primaries[0][1]));
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_GX,
                           FUNC1(metadata->display_primaries[1][0]));
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_GY,
                           FUNC1(metadata->display_primaries[1][1]));
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_BX,
                           FUNC1(metadata->display_primaries[2][0]));
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_BY,
                           FUNC1(metadata->display_primaries[2][1]));
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_WHITEX,
                           FUNC1(metadata->white_point[0]));
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_WHITEY,
                           FUNC1(metadata->white_point[1]));
        }
        if (metadata->has_luminance) {
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_LUMINANCEMAX,
                           FUNC1(metadata->max_luminance));
            FUNC8(dyn_cp, MATROSKA_ID_VIDEOCOLOR_LUMINANCEMIN,
                           FUNC1(metadata->min_luminance));
        }
        FUNC7(dyn_cp, meta_element);
    }

    colorinfo_size = FUNC4(dyn_cp, &colorinfo_ptr);
    if (colorinfo_size) {
        ebml_master colorinfo = FUNC10(pb, MATROSKA_ID_VIDEOCOLOR, colorinfo_size);
        FUNC6(pb, colorinfo_ptr, colorinfo_size);
        FUNC7(pb, colorinfo);
    }
    FUNC0(colorinfo_ptr);
    return 0;
}