
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; scalar_t__ role; } ;
typedef scalar_t__ MMALOMX_ROLE_T ;


 TYPE_1__* mmalomx_roles ;

const char *mmalomx_role_to_name(MMALOMX_ROLE_T role)
{
    unsigned int i;
    for (i = 0; mmalomx_roles[i].name; i++)
       if (mmalomx_roles[i].role == role)
          break;
    return mmalomx_roles[i].name;
}
