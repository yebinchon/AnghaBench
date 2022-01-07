
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tristate ;
struct TYPE_2__ {int tri; } ;
struct symbol {TYPE_1__ curr; } ;



__attribute__((used)) static inline tristate sym_get_tristate_value(struct symbol *sym)
{
 return sym->curr.tri;
}
