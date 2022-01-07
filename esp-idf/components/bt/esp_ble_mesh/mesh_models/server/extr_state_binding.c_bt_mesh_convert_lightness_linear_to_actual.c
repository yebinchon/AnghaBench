
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;


 float UINT16_MAX ;
 float bt_mesh_sqrt (float) ;

u16_t bt_mesh_convert_lightness_linear_to_actual(u16_t linear)
{
    return (u16_t) (UINT16_MAX * bt_mesh_sqrt(((float) linear / UINT16_MAX)));
}
