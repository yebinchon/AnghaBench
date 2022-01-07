
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int dst_y; int dst_x; int h; int w; int stride; int bitmap; int color; struct TYPE_9__* next; } ;
struct TYPE_8__ {int height; int width; int linesize; int data; } ;
struct TYPE_7__ {int draw; } ;
typedef int FFDrawColor ;
typedef TYPE_1__ AssContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ ASS_Image ;


 int AA (int ) ;
 int AB (int ) ;
 int AG (int ) ;
 int AR (int ) ;
 int ff_blend_mask (int *,int *,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ) ;
 int ff_draw_color (int *,int *,int *) ;

__attribute__((used)) static void overlay_ass_image(AssContext *ass, AVFrame *picref,
                              const ASS_Image *image)
{
    for (; image; image = image->next) {
        uint8_t rgba_color[] = {AR(image->color), AG(image->color), AB(image->color), AA(image->color)};
        FFDrawColor color;
        ff_draw_color(&ass->draw, &color, rgba_color);
        ff_blend_mask(&ass->draw, &color,
                      picref->data, picref->linesize,
                      picref->width, picref->height,
                      image->bitmap, image->stride, image->w, image->h,
                      3, 0, image->dst_x, image->dst_y);
    }
}
