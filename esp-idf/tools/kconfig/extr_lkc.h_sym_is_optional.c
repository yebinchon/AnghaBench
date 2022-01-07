
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int flags; } ;


 int SYMBOL_OPTIONAL ;

__attribute__((used)) static inline bool sym_is_optional(struct symbol *sym)
{
 return sym->flags & SYMBOL_OPTIONAL ? 1 : 0;
}
