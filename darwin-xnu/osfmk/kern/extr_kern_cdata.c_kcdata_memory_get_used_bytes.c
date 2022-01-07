
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct kcdata_item {int dummy; } ;
typedef TYPE_1__* kcdata_descriptor_t ;
struct TYPE_3__ {scalar_t__ kcd_addr_begin; scalar_t__ kcd_addr_end; } ;


 int assert (int ) ;

uint64_t kcdata_memory_get_used_bytes(kcdata_descriptor_t kcd)
{
 assert(kcd != ((void*)0));
 return ((uint64_t)kcd->kcd_addr_end - (uint64_t)kcd->kcd_addr_begin) + sizeof(struct kcdata_item);
}
