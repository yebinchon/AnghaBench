
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float u16_t ;
typedef int s16_t ;


 scalar_t__ INT16_MIN ;
 float UINT16_MAX ;

s16_t bt_mesh_convert_temperature_to_gen_level(u16_t temp, u16_t min, u16_t max)
{
    float tmp = (temp - min) * UINT16_MAX / (max - min);
    return (s16_t) (tmp + INT16_MIN);
}
