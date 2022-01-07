
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float value; int name; } ;
typedef TYPE_1__ configcvar_t ;


 TYPE_1__* g_configcvars ;
 int strcmp (int ,char*) ;

__attribute__((used)) static float Controls_GetCvarValue( char* name )
{
 configcvar_t* cvarptr;
 int i;

 cvarptr = g_configcvars;
 for (i=0; ;i++,cvarptr++)
 {
  if (!cvarptr->name)
   return (0);

  if (!strcmp(cvarptr->name,name))
   break;
 }

 return (cvarptr->value);
}
