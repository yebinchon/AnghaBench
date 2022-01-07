
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_3__ {int height; int width; int linesize; int data; } ;
typedef int FFDrawContext ;
typedef int FFDrawColor ;
typedef TYPE_1__ AVFrame ;


 scalar_t__ avpriv_cga_font ;
 int ff_blend_mask (int *,int *,int ,int ,int ,int ,scalar_t__,int,int,int,int ,int ,int,int) ;

__attribute__((used)) static void draw_text(FFDrawContext *draw, AVFrame *frame, FFDrawColor *color,
                      int x0, int y0, const uint8_t *text, int vertical)
{
    int x = x0;

    for (; *text; text++) {
        if (*text == '\n') {
            x = x0;
            y0 += 8;
            continue;
        }
        ff_blend_mask(draw, color, frame->data, frame->linesize,
                      frame->width, frame->height,
                      avpriv_cga_font + *text * 8, 1, 8, 8, 0, 0, x, y0);
        if (vertical) {
            x = x0;
            y0 += 8;
        } else {
            x += 8;
        }
    }
}
