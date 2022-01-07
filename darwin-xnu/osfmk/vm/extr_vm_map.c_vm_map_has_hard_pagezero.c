
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ min_offset; } ;



boolean_t
vm_map_has_hard_pagezero(
  vm_map_t map,
  vm_map_offset_t pagezero_size)
{
 return (map->min_offset >= pagezero_size);
}
