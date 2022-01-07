
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_1__ ccv_rect_t ;



__attribute__((used)) inline static int ccv_rect_is_zero(ccv_rect_t rect)
{
 return rect.x == 0 && rect.y == 0 && rect.width == 0 && rect.height == 0;
}
