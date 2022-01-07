
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ ccv_point_t ;



__attribute__((used)) inline static ccv_point_t ccv_point(int x, int y)
{
 ccv_point_t point;
 point.x = x;
 point.y = y;
 return point;
}
