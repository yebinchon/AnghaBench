
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int thickness; int h; int x; int w; } ;
typedef TYPE_1__ DrawBoxContext ;



int pixel_belongs_to_box(DrawBoxContext *s, int x, int y)
{
    return (y - s->y < s->thickness) || (s->y + s->h - 1 - y < s->thickness) ||
           (x - s->x < s->thickness) || (s->x + s->w - 1 - x < s->thickness);
}
