
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int min_offset; int pmap; } ;


 int pmap_advise_pagezero_range (int ,int ) ;

void vm_commit_pagezero_status(vm_map_t lmap) {
 pmap_advise_pagezero_range(lmap->pmap, lmap->min_offset);
}
