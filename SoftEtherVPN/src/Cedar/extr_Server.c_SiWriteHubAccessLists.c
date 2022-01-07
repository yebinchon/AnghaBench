
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int Id; } ;
struct TYPE_6__ {int AccessList; } ;
typedef TYPE_1__ HUB ;
typedef int FOLDER ;
typedef TYPE_2__ ACCESS ;


 int CfgCreateFolder (int *,char*) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int SiWriteHubAccessCfg (int ,TYPE_2__*) ;
 int ToStr (char*,int ) ;
 int UnlockList (int ) ;

void SiWriteHubAccessLists(FOLDER *f, HUB *h)
{

 if (f == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 LockList(h->AccessList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(h->AccessList);i++)
  {
   ACCESS *a = LIST_DATA(h->AccessList, i);
   char name[MAX_SIZE];
   ToStr(name, a->Id);
   SiWriteHubAccessCfg(CfgCreateFolder(f, name), a);
  }
 }
 UnlockList(h->AccessList);
}
