
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int boolean_t ;
struct TYPE_4__ {int (* reloc_has_got ) (int ) ;} ;
typedef TYPE_1__ KXLDRelocator ;


 int check (TYPE_1__ const*) ;
 int stub1 (int ) ;

boolean_t
kxld_relocator_has_got(const KXLDRelocator *relocator, u_int r_type)
{
    check(relocator);

    return relocator->reloc_has_got(r_type);
}
