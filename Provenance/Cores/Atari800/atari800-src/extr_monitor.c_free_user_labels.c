
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* name; } ;


 int free (TYPE_1__*) ;
 TYPE_1__* symtable_user ;
 size_t symtable_user_size ;

__attribute__((used)) static void free_user_labels(void)
{
 if (symtable_user != ((void*)0)) {
  while (symtable_user_size > 0)
   free(symtable_user[--symtable_user_size].name);
  free(symtable_user);
  symtable_user = ((void*)0);
 }
}
