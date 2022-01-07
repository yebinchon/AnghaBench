
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int HubCreateHistoryList; } ;
struct TYPE_8__ {int HubName; } ;
typedef TYPE_1__ SERVER_HUB_CREATE_HISTORY ;
typedef TYPE_2__ SERVER ;


 int Delete (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int SiDeleteOldHubCreateHistory (TYPE_2__*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int UnlockList (int ) ;

void SiDelHubCreateHistory(SERVER *s, char *name)
{
 UINT i;

 if (s == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 LockList(s->HubCreateHistoryList);
 {
  SERVER_HUB_CREATE_HISTORY *hh = ((void*)0);
  for (i = 0;i < LIST_NUM(s->HubCreateHistoryList);i++)
  {
   SERVER_HUB_CREATE_HISTORY *h = LIST_DATA(s->HubCreateHistoryList, i);

   if (StrCmpi(h->HubName, name) == 0)
   {
    Delete(s->HubCreateHistoryList, h);
    Free(h);
    break;
   }
  }
 }
 UnlockList(s->HubCreateHistoryList);

 SiDeleteOldHubCreateHistory(s);
}
