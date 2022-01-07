
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int Name; } ;
struct TYPE_6__ {int CapsList; } ;
typedef TYPE_1__ CAPSLIST ;
typedef TYPE_2__ CAPS ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ StrCmpi (int ,char*) ;

CAPS *GetCaps(CAPSLIST *caps, char *name)
{
 UINT i;

 if (caps == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(caps->CapsList);i++)
 {
  CAPS *c = LIST_DATA(caps->CapsList, i);

  if (StrCmpi(c->Name, name) == 0)
  {
   return c;
  }
 }

 return ((void*)0);
}
