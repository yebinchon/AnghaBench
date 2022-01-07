
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int role; scalar_t__ name; } ;
typedef int MMALOMX_ROLE_T ;


 TYPE_1__* mmalomx_roles ;
 int strcmp (scalar_t__,char const*) ;

MMALOMX_ROLE_T mmalomx_role_from_name(const char *name)
{
   unsigned int i;
   for (i = 0; mmalomx_roles[i].name; i++)
      if (!strcmp(mmalomx_roles[i].name, name))
         break;
   return mmalomx_roles[i].role;
}
