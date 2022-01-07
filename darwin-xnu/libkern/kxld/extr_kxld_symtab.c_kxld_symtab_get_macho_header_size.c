
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct symtab_command {int dummy; } ;



u_long
kxld_symtab_get_macho_header_size(void)
{
    return sizeof(struct symtab_command);
}
