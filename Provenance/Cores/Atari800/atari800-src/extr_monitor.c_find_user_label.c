
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ symtable_rec ;


 scalar_t__ Util_stricmp (int ,char const*) ;
 TYPE_1__* symtable_user ;
 int symtable_user_size ;

__attribute__((used)) static symtable_rec *find_user_label(const char *name)
{
 int i;
 for (i = 0; i < symtable_user_size; i++) {
  if (Util_stricmp(symtable_user[i].name, name) == 0)
   return &symtable_user[i];
 }
 return ((void*)0);
}
