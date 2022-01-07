
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* string; int modified; int value; } ;
typedef TYPE_1__ libvar_t ;


 scalar_t__ GetMemory (scalar_t__) ;
 TYPE_1__* LibVarAlloc (char*) ;
 TYPE_1__* LibVarGet (char*) ;
 int LibVarStringValue (char*) ;
 int qtrue ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

libvar_t *LibVar(char *var_name, char *value)
{
 libvar_t *v;
 v = LibVarGet(var_name);
 if (v) return v;

 v = LibVarAlloc(var_name);

 v->string = (char *) GetMemory(strlen(value) + 1);
 strcpy(v->string, value);

 v->value = LibVarStringValue(v->string);

 v->modified = qtrue;

 return v;
}
