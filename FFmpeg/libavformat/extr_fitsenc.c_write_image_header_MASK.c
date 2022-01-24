#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_10__ {int format; int width; int height; } ;
struct TYPE_9__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; TYPE_2__** streams; } ;
struct TYPE_8__ {TYPE_4__* codecpar; } ;
struct TYPE_7__ {scalar_t__ first_image; } ;
typedef  TYPE_1__ FITSContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_GBRAP 133 
#define  AV_PIX_FMT_GBRAP16BE 132 
#define  AV_PIX_FMT_GBRP 131 
#define  AV_PIX_FMT_GBRP16BE 130 
#define  AV_PIX_FMT_GRAY16BE 129 
#define  AV_PIX_FMT_GRAY8 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int,int*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    AVStream *st = s->streams[0];
    AVCodecParameters *encctx = st->codecpar;
    FITSContext *fitsctx = s->priv_data;
    uint8_t buffer[80];
    int bitpix, naxis, naxis3 = 1, bzero = 0, rgb = 0, lines_written = 0, lines_left;

    switch (encctx->format) {
        case AV_PIX_FMT_GRAY8:
            bitpix = 8;
            naxis = 2;
            break;
        case AV_PIX_FMT_GRAY16BE:
            bitpix = 16;
            naxis = 2;
            bzero = 32768;
            break;
        case AV_PIX_FMT_GBRP:
        case AV_PIX_FMT_GBRAP:
            bitpix = 8;
            naxis = 3;
            rgb = 1;
            if (encctx->format == AV_PIX_FMT_GBRP) {
                naxis3 = 3;
            } else {
                naxis3 = 4;
            }
            break;
        case AV_PIX_FMT_GBRP16BE:
        case AV_PIX_FMT_GBRAP16BE:
            bitpix = 16;
            naxis = 3;
            rgb = 1;
            if (encctx->format == AV_PIX_FMT_GBRP16BE) {
                naxis3 = 3;
            } else {
                naxis3 = 4;
            }
            bzero = 32768;
            break;
        default:
            return FUNC0(EINVAL);
    }

    if (fitsctx->first_image) {
        FUNC2(buffer, "SIMPLE  = ", 10);
        FUNC3(buffer + 10, ' ', 70);
        buffer[29] = 'T';
        FUNC1(s->pb, buffer, sizeof(buffer));
    } else {
        FUNC2(buffer, "XTENSION= 'IMAGE   '", 20);
        FUNC3(buffer + 20, ' ', 60);
        FUNC1(s->pb, buffer, sizeof(buffer));
    }
    lines_written++;

    FUNC4(s, "BITPIX", bitpix, &lines_written);         // no of bits per pixel
    FUNC4(s, "NAXIS", naxis, &lines_written);           // no of dimensions of image
    FUNC4(s, "NAXIS1", encctx->width, &lines_written);   // first dimension i.e. width
    FUNC4(s, "NAXIS2", encctx->height, &lines_written);  // second dimension i.e. height

    if (rgb)
        FUNC4(s, "NAXIS3", naxis3, &lines_written);     // third dimension to store RGBA planes

    if (!fitsctx->first_image) {
        FUNC4(s, "PCOUNT", 0, &lines_written);
        FUNC4(s, "GCOUNT", 1, &lines_written);
    } else {
        fitsctx->first_image = 0;
    }

    /*
     * Since FITS does not support unsigned 16 bit integers,
     * BZERO = 32768 is used to store unsigned 16 bit integers as
     * signed integers so that it can be read properly.
     */
    if (bitpix == 16)
        FUNC4(s, "BZERO", bzero, &lines_written);

    if (rgb) {
        FUNC2(buffer, "CTYPE3  = 'RGB     '", 20);
        FUNC3(buffer + 20, ' ', 60);
        FUNC1(s->pb, buffer, sizeof(buffer));
        lines_written++;
    }

    FUNC2(buffer, "END", 3);
    FUNC3(buffer + 3, ' ', 77);
    FUNC1(s->pb, buffer, sizeof(buffer));
    lines_written++;

    lines_left = ((lines_written + 35) / 36) * 36 - lines_written;
    FUNC3(buffer, ' ', 80);
    while (lines_left > 0) {
        FUNC1(s->pb, buffer, sizeof(buffer));
        lines_left--;
    }
    return 0;
}