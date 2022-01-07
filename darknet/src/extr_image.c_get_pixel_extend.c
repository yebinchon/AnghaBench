
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int w; int h; int c; } ;
typedef TYPE_1__ image ;


 float get_pixel (TYPE_1__,int,int,int) ;

__attribute__((used)) static float get_pixel_extend(image m, int x, int y, int c)
{
    if(x < 0 || x >= m.w || y < 0 || y >= m.h) return 0;






    if(c < 0 || c >= m.c) return 0;
    return get_pixel(m, x, y, c);
}
