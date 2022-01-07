
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; } ;
typedef TYPE_1__ ccv_decimal_point_t ;



__attribute__((used)) inline static ccv_decimal_point_t ccv_decimal_point(float x, float y)
{
 ccv_decimal_point_t point;
 point.x = x;
 point.y = y;
 return point;
}
