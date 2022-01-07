
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {scalar_t__ base_addr; } ;
struct TYPE_6__ {scalar_t__ base_addr; } ;
typedef TYPE_1__ KXLDSym ;
typedef TYPE_2__ KXLDSect ;


 int check (TYPE_1__ const*) ;

u_int
kxld_sym_get_section_offset(const KXLDSym *sym, const KXLDSect *sect)
{
    check(sym);

    return (u_int) (sym->base_addr - sect->base_addr);
}
