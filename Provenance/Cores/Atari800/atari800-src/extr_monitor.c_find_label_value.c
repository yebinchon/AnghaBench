
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int addr; int * name; } ;
typedef TYPE_1__ symtable_rec ;


 scalar_t__ Atari800_MACHINE_5200 ;
 scalar_t__ Atari800_machine_type ;
 scalar_t__ Util_stricmp (int *,char const*) ;
 TYPE_1__* find_user_label (char const*) ;
 TYPE_1__* symtable_builtin ;
 TYPE_1__* symtable_builtin_5200 ;
 scalar_t__ symtable_builtin_enable ;

__attribute__((used)) static int find_label_value(const char *name)
{
 const symtable_rec *p = find_user_label(name);
 if (p != ((void*)0))
  return p->addr;
 if (symtable_builtin_enable) {
  for (p = (Atari800_machine_type == Atari800_MACHINE_5200 ? symtable_builtin_5200 : symtable_builtin); p->name != ((void*)0); p++) {
   if (Util_stricmp(p->name, name) == 0)
    return p->addr;
  }
 }
 return -1;
}
