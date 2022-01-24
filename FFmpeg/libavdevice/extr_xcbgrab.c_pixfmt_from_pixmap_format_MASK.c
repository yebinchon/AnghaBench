#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_setup_t ;
struct TYPE_7__ {int depth; int bits_per_pixel; } ;
typedef  TYPE_1__ xcb_format_t ;
struct TYPE_8__ {int bpp; int frame_size; int width; int height; int /*<<< orphan*/  conn; } ;
typedef  TYPE_2__ XCBGrabContext ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_PATCHWELCOME ; 
 int AV_PIX_FMT_0RGB ; 
 int AV_PIX_FMT_0RGB32 ; 
 int AV_PIX_FMT_RGB24 ; 
 int AV_PIX_FMT_RGB555 ; 
 int AV_PIX_FMT_RGB565 ; 
 int AV_PIX_FMT_RGB8 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, int depth,
                                     int *pix_fmt)
{
    XCBGrabContext *c        = s->priv_data;
    const xcb_setup_t *setup = FUNC1(c->conn);
    const xcb_format_t *fmt  = FUNC2(setup);
    int length               = FUNC3(setup);

    *pix_fmt = 0;

    while (length--) {
        if (fmt->depth == depth) {
            switch (depth) {
            case 32:
                if (fmt->bits_per_pixel == 32)
                    *pix_fmt = AV_PIX_FMT_0RGB;
                break;
            case 24:
                if (fmt->bits_per_pixel == 32)
                    *pix_fmt = AV_PIX_FMT_0RGB32;
                else if (fmt->bits_per_pixel == 24)
                    *pix_fmt = AV_PIX_FMT_RGB24;
                break;
            case 16:
                if (fmt->bits_per_pixel == 16)
                    *pix_fmt = AV_PIX_FMT_RGB565;
                break;
            case 15:
                if (fmt->bits_per_pixel == 16)
                    *pix_fmt = AV_PIX_FMT_RGB555;
                break;
            case 8:
                if (fmt->bits_per_pixel == 8)
                    *pix_fmt = AV_PIX_FMT_RGB8;
                break;
            }
        }

        if (*pix_fmt) {
            c->bpp        = fmt->bits_per_pixel;
            c->frame_size = c->width * c->height * fmt->bits_per_pixel / 8;
            return 0;
        }

        fmt++;
    }
    FUNC0(s, "Mapping this pixmap format");

    return AVERROR_PATCHWELCOME;
}