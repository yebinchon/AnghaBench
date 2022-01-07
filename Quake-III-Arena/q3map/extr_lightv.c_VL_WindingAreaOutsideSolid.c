
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int winding_t ;
typedef int vec3_t ;


 float VL_R_WindingAreaOutsideSolid (int *,int ,int ) ;

float VL_WindingAreaOutsideSolid(winding_t *w, vec3_t normal)
{
 return VL_R_WindingAreaOutsideSolid(w, normal, 0);
}
