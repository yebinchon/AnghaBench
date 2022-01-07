
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
typedef scalar_t__ s16_t ;


 scalar_t__ INT16_MIN ;

u16_t bt_mesh_convert_level_to_saturation(s16_t level)
{
    return (u16_t) (level - INT16_MIN);
}
