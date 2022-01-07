
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int w; int h; } ;
typedef TYPE_1__ image ;
struct TYPE_7__ {int x; int w; int y; int h; } ;
typedef TYPE_2__ box ;


 int draw_box (TYPE_1__,int,int,int,int,float,float,float) ;

void draw_bbox(image a, box bbox, int w, float r, float g, float b)
{
    int left = (bbox.x-bbox.w/2)*a.w;
    int right = (bbox.x+bbox.w/2)*a.w;
    int top = (bbox.y-bbox.h/2)*a.h;
    int bot = (bbox.y+bbox.h/2)*a.h;

    int i;
    for(i = 0; i < w; ++i){
        draw_box(a, left+i, top+i, right-i, bot-i, r, g, b);
    }
}
