
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;
typedef float s16_t ;


 float INT16_MIN ;
 float UINT16_MAX ;

u16_t bt_mesh_covert_gen_level_to_temperature(s16_t level, u16_t min, u16_t max)
{
    float diff = (float) (max - min) / UINT16_MAX;
    u16_t tmp = (u16_t) ((level - INT16_MIN) * diff);
    return (u16_t) (min + tmp);
}
