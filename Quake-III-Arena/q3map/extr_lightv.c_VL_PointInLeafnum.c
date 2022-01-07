
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int VL_PointInLeafnum_r (int ,int ) ;

int VL_PointInLeafnum(vec3_t point)
{
 return VL_PointInLeafnum_r(point, 0);
}
