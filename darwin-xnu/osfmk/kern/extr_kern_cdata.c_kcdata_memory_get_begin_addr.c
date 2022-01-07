
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* kcdata_descriptor_t ;
struct TYPE_3__ {scalar_t__ kcd_addr_begin; } ;



void *kcdata_memory_get_begin_addr(kcdata_descriptor_t data)
{
 if (data == ((void*)0)) {
  return ((void*)0);
 }

 return (void *)data->kcd_addr_begin;
}
