
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int SessionList; } ;
struct TYPE_6__ {int ref; int Name; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ HUB ;


 int AddRef (int ) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int UnlockList (int ) ;

SESSION *GetSessionByName(HUB *hub, char *name)
{

 if (hub == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 LockList(hub->SessionList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(hub->SessionList);i++)
  {
   SESSION *s = LIST_DATA(hub->SessionList, i);
   if (StrCmpi(s->Name, name) == 0)
   {

    AddRef(s->ref);
    UnlockList(hub->SessionList);
    return s;
   }
  }
 }
 UnlockList(hub->SessionList);

 return ((void*)0);
}
