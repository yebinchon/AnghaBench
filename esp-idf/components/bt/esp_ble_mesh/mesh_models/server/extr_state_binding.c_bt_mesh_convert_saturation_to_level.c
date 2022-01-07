
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;
typedef int s16_t ;


 scalar_t__ INT16_MIN ;

s16_t bt_mesh_convert_saturation_to_level(u16_t saturation)
{
    return (s16_t) (saturation + INT16_MIN);
}
