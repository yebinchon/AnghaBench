
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int width; int height; } ;
typedef TYPE_1__ ccv_rect_t ;



__attribute__((used)) inline static ccv_rect_t ccv_rect(int x, int y, int width, int height)
{
 ccv_rect_t rect;
 rect.x = x;
 rect.y = y;
 rect.width = width;
 rect.height = height;
 return rect;
}
