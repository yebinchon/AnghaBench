
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int HubCreateHistoryList; } ;
struct TYPE_8__ {int CreatedTime; int HubName; } ;
typedef TYPE_1__ SERVER_HUB_CREATE_HISTORY ;
typedef TYPE_2__ SERVER ;


 int Add (int ,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int SiDeleteOldHubCreateHistory (TYPE_2__*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (int ,int,char*) ;
 int Tick64 () ;
 int UnlockList (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

void SiAddHubCreateHistory(SERVER *s, char *name)
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
    hh = h;
    break;
   }
  }

  if (hh == ((void*)0))
  {
   hh = ZeroMalloc(sizeof(SERVER_HUB_CREATE_HISTORY));
   StrCpy(hh->HubName, sizeof(hh->HubName), name);

   Add(s->HubCreateHistoryList, hh);
  }

  hh->CreatedTime = Tick64();
 }
 UnlockList(s->HubCreateHistoryList);

 SiDeleteOldHubCreateHistory(s);
}
