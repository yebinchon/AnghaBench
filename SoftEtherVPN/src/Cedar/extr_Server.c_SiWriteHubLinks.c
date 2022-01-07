
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int LinkList; } ;
typedef int LINK ;
typedef TYPE_1__ HUB ;
typedef int FOLDER ;


 int CfgCreateFolder (int *,char*) ;
 int Format (char*,int,char*,scalar_t__) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int SiWriteHubLinkCfg (int ,int *) ;
 int UnlockList (int ) ;

void SiWriteHubLinks(FOLDER *f, HUB *h)
{

 if (f == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 LockList(h->LinkList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(h->LinkList);i++)
  {
   LINK *k = LIST_DATA(h->LinkList, i);
   char name[MAX_SIZE];
   Format(name, sizeof(name), "Cascade%u", i);
   SiWriteHubLinkCfg(CfgCreateFolder(f, name), k);
  }
 }
 UnlockList(h->LinkList);
}
