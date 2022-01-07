
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; struct TYPE_4__* hashNext; } ;
typedef TYPE_1__ cvar_t ;


 int Q_stricmp (char const*,int ) ;
 long generateHashValue (char const*) ;
 TYPE_1__** hashTable ;

__attribute__((used)) static cvar_t *Cvar_FindVar( const char *var_name ) {
 cvar_t *var;
 long hash;

 hash = generateHashValue(var_name);

 for (var=hashTable[hash] ; var ; var=var->hashNext) {
  if (!Q_stricmp(var_name, var->name)) {
   return var;
  }
 }

 return ((void*)0);
}
