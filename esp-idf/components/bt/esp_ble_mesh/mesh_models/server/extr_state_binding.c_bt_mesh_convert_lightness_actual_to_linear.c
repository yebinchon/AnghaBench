
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;


 float UINT16_MAX ;
 scalar_t__ bt_mesh_ceiling (float) ;

u16_t bt_mesh_convert_lightness_actual_to_linear(u16_t actual)
{
    float tmp = ((float) actual / UINT16_MAX);

    return bt_mesh_ceiling(UINT16_MAX * tmp * tmp);
}
