
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int * HubCreateHistoryList; } ;
struct TYPE_8__ {scalar_t__ CreatedTime; } ;
typedef TYPE_1__ SERVER_HUB_CREATE_HISTORY ;
typedef TYPE_2__ SERVER ;
typedef int LIST ;


 int Add (int *,TYPE_1__*) ;
 int Delete (int *,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ TICKET_EXPIRES ;
 scalar_t__ Tick64 () ;
 int UnlockList (int *) ;

void SiDeleteOldHubCreateHistory(SERVER *s)
{
 UINT i;
 LIST *o;

 if (s == ((void*)0))
 {
  return;
 }

 LockList(s->HubCreateHistoryList);
 {
  o = NewListFast(((void*)0));

  for (i = 0;i < LIST_NUM(s->HubCreateHistoryList);i++)
  {
   SERVER_HUB_CREATE_HISTORY *h = LIST_DATA(s->HubCreateHistoryList, i);

   if ((h->CreatedTime + ((UINT64)TICKET_EXPIRES)) <= Tick64())
   {

    Add(o, h);
   }
  }

  for (i = 0;i < LIST_NUM(o);i++)
  {
   SERVER_HUB_CREATE_HISTORY *h = LIST_DATA(o, i);

   Delete(s->HubCreateHistoryList, h);

   Free(h);
  }

  ReleaseList(o);
 }
 UnlockList(s->HubCreateHistoryList);
}
