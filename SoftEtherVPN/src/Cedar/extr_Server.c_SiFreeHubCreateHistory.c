
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int * HubCreateHistoryList; } ;
typedef int SERVER_HUB_CREATE_HISTORY ;
typedef TYPE_1__ SERVER ;


 int Free (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void SiFreeHubCreateHistory(SERVER *s)
{
 UINT i;

 if (s == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(s->HubCreateHistoryList);i++)
 {
  SERVER_HUB_CREATE_HISTORY *h = LIST_DATA(s->HubCreateHistoryList, i);

  Free(h);
 }

 ReleaseList(s->HubCreateHistoryList);

 s->HubCreateHistoryList = ((void*)0);
}
