
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xcb_setup_t ;
struct TYPE_7__ {int depth; int bits_per_pixel; } ;
typedef TYPE_1__ xcb_format_t ;
struct TYPE_8__ {int bpp; int frame_size; int width; int height; int conn; } ;
typedef TYPE_2__ XCBGrabContext ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_PATCHWELCOME ;
 int AV_PIX_FMT_0RGB ;
 int AV_PIX_FMT_0RGB32 ;
 int AV_PIX_FMT_RGB24 ;
 int AV_PIX_FMT_RGB555 ;
 int AV_PIX_FMT_RGB565 ;
 int AV_PIX_FMT_RGB8 ;
 int avpriv_report_missing_feature (TYPE_3__*,char*) ;
 int * xcb_get_setup (int ) ;
 TYPE_1__* xcb_setup_pixmap_formats (int const*) ;
 int xcb_setup_pixmap_formats_length (int const*) ;

__attribute__((used)) static int pixfmt_from_pixmap_format(AVFormatContext *s, int depth,
                                     int *pix_fmt)
{
    XCBGrabContext *c = s->priv_data;
    const xcb_setup_t *setup = xcb_get_setup(c->conn);
    const xcb_format_t *fmt = xcb_setup_pixmap_formats(setup);
    int length = xcb_setup_pixmap_formats_length(setup);

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
            c->bpp = fmt->bits_per_pixel;
            c->frame_size = c->width * c->height * fmt->bits_per_pixel / 8;
            return 0;
        }

        fmt++;
    }
    avpriv_report_missing_feature(s, "Mapping this pixmap format");

    return AVERROR_PATCHWELCOME;
}
