
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int columns; TYPE_2__* text; } ;
typedef TYPE_1__ vbi_page ;
struct TYPE_9__ {int opacity; int background; } ;
typedef TYPE_2__ vbi_char ;
typedef int uint8_t ;
struct TYPE_10__ {int opacity; int transparent_bg; } ;
typedef TYPE_3__ TeletextContext ;
struct TYPE_11__ {int* linesize; int ** data; } ;
typedef TYPE_4__ AVSubtitleRect ;


 int BITMAP_CHAR_HEIGHT ;
 int BITMAP_CHAR_WIDTH ;
 int VBI_NB_COLORS ;


 int VBI_TRANSPARENT_BLACK ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void fix_transparency(TeletextContext *ctx, AVSubtitleRect *sub_rect, vbi_page *page,
                             int chop_top, int resx, int resy)
{
    int iy;


    for (iy = 0; iy < resy; iy++) {
        uint8_t *pixel = sub_rect->data[0] + iy * sub_rect->linesize[0];
        vbi_char *vc = page->text + (iy / BITMAP_CHAR_HEIGHT + chop_top) * page->columns;
        vbi_char *vcnext = vc + page->columns;
        for (; vc < vcnext; vc++) {
            uint8_t *pixelnext = pixel + BITMAP_CHAR_WIDTH;
            switch (vc->opacity) {
                case 128:
                    memset(pixel, VBI_TRANSPARENT_BLACK, BITMAP_CHAR_WIDTH);
                    break;
                case 131:
                    if (!ctx->transparent_bg)
                        break;
                case 130:
                    if (ctx->opacity > 0) {
                        if (ctx->opacity < 255)
                            for(; pixel < pixelnext; pixel++)
                                if (*pixel == vc->background)
                                    *pixel += VBI_NB_COLORS;
                        break;
                    }
                case 129:
                    for(; pixel < pixelnext; pixel++)
                        if (*pixel == vc->background)
                            *pixel = VBI_TRANSPARENT_BLACK;
                    break;
            }
            pixel = pixelnext;
        }
    }
}
