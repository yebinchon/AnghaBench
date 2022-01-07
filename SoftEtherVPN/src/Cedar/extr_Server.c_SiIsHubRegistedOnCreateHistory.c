
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int HubCreateHistoryList; } ;
struct TYPE_6__ {int HubName; } ;
typedef TYPE_1__ SERVER_HUB_CREATE_HISTORY ;
typedef TYPE_2__ SERVER ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int SiDeleteOldHubCreateHistory (TYPE_2__*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int UnlockList (int ) ;

bool SiIsHubRegistedOnCreateHistory(SERVER *s, char *name)
{
 UINT i;
 bool ret = 0;

 if (s == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 SiDeleteOldHubCreateHistory(s);

 LockList(s->HubCreateHistoryList);
 {
  for (i = 0;i < LIST_NUM(s->HubCreateHistoryList);i++)
  {
   SERVER_HUB_CREATE_HISTORY *h = LIST_DATA(s->HubCreateHistoryList, i);

   if (StrCmpi(h->HubName, name) == 0)
   {
    ret = 1;
    break;
   }
  }
 }
 UnlockList(s->HubCreateHistoryList);

 return ret;
}
