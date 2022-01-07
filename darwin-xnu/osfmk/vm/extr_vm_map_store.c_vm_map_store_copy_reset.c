
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_map_entry_t ;
typedef TYPE_3__* vm_map_copy_t ;
struct TYPE_8__ {int hdr; } ;
struct TYPE_7__ {int nentries; } ;
struct TYPE_9__ {TYPE_2__ c_u; TYPE_1__ cpy_hdr; } ;


 int vm_map_store_copy_reset_ll (TYPE_3__*,int ,int) ;
 int vm_map_store_copy_reset_rb (TYPE_3__*,int ,int) ;
 scalar_t__ vm_map_store_has_RB_support (int *) ;

void
vm_map_store_copy_reset( vm_map_copy_t copy,vm_map_entry_t entry)
{
 int nentries = copy->cpy_hdr.nentries;
 vm_map_store_copy_reset_ll(copy, entry, nentries);





}
