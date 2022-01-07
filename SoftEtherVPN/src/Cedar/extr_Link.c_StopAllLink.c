
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_9__ {int StopAllLinkFlag; int LinkList; } ;
struct TYPE_8__ {int ref; } ;
typedef TYPE_1__ LINK ;
typedef TYPE_2__ HUB ;


 int AddRef (int ) ;
 int Free (TYPE_1__**) ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseLink (TYPE_1__*) ;
 int StopLink (TYPE_1__*) ;
 TYPE_1__** ToArray (int ) ;
 int UnlockList (int ) ;

void StopAllLink(HUB *h)
{
 LINK **link_list;
 UINT num_link;
 UINT i;

 if (h == ((void*)0))
 {
  return;
 }

 h->StopAllLinkFlag = 1;

 LockList(h->LinkList);
 {
  link_list = ToArray(h->LinkList);
  num_link = LIST_NUM(h->LinkList);
  for (i = 0;i < num_link;i++)
  {
   AddRef(link_list[i]->ref);
  }
 }
 UnlockList(h->LinkList);

 for (i = 0;i < num_link;i++)
 {
  StopLink(link_list[i]);
  ReleaseLink(link_list[i]);
 }

 Free(link_list);

 h->StopAllLinkFlag = 0;
}
