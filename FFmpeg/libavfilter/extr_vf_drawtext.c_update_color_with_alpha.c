
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int alpha; int dc; } ;
struct TYPE_7__ {int* rgba; } ;
typedef TYPE_1__ FFDrawColor ;
typedef TYPE_2__ DrawTextContext ;


 int ff_draw_color (int *,TYPE_1__*,int*) ;

__attribute__((used)) static void update_color_with_alpha(DrawTextContext *s, FFDrawColor *color, const FFDrawColor incolor)
{
    *color = incolor;
    color->rgba[3] = (color->rgba[3] * s->alpha) / 255;
    ff_draw_color(&s->dc, color, color->rgba);
}
