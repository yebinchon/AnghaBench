
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_map_address_t ;
typedef int tt_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {int * tte; } ;


 int panic (char*) ;
 size_t tt1_index (TYPE_1__*,int ) ;

__attribute__((used)) static inline tt_entry_t *
pmap_tt1e(pmap_t pmap,
  vm_map_address_t addr)
{






 return (&pmap->tte[tt1_index(pmap, addr)]);

}
