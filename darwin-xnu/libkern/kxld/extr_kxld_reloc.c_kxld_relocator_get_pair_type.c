
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int (* reloc_get_pair_type ) (int ) ;} ;
typedef TYPE_1__ KXLDRelocator ;


 int check (TYPE_1__ const*) ;
 int stub1 (int ) ;

u_int
kxld_relocator_get_pair_type(const KXLDRelocator *relocator,
    u_int prev_r_type)
{
    check(relocator);

    return relocator->reloc_get_pair_type(prev_r_type);
}
