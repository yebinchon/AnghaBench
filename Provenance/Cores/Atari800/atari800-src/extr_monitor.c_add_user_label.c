
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; int name; } ;
typedef TYPE_1__ symtable_rec ;
typedef int UWORD ;


 int SYMTABLE_USER_INITIAL_SIZE ;
 scalar_t__ Util_malloc (int) ;
 scalar_t__ Util_realloc (TYPE_1__*,int) ;
 int Util_strdup (char const*) ;
 TYPE_1__* symtable_user ;
 int symtable_user_size ;

__attribute__((used)) static void add_user_label(const char *name, UWORD addr)
{

 if (symtable_user == ((void*)0))
  symtable_user = (symtable_rec *) Util_malloc(128 * sizeof(symtable_rec));
 else if (symtable_user_size >= 128
       && (symtable_user_size & (symtable_user_size - 1)) == 0) {

  symtable_user = (symtable_rec *) Util_realloc(symtable_user,
   2 * symtable_user_size * sizeof(symtable_rec));
 }
 symtable_user[symtable_user_size].name = Util_strdup(name);
 symtable_user[symtable_user_size].addr = addr;
 symtable_user_size++;
}
