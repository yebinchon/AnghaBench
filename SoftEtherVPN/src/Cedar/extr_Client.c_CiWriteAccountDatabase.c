
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int lock; } ;
struct TYPE_6__ {int AccountList; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT ;
typedef TYPE_2__ ACCOUNT ;


 int CfgCreateFolder (int *,char*) ;
 int CiWriteAccountData (int ,TYPE_2__*) ;
 int Format (char*,int,char*,scalar_t__) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void CiWriteAccountDatabase(CLIENT *c, FOLDER *f)
{
 char name[MAX_SIZE];

 if (c == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 LockList(c->AccountList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(c->AccountList);i++)
  {
   ACCOUNT *a = LIST_DATA(c->AccountList, i);

   {
    Format(name, sizeof(name), "Account%u", i);
    Lock(a->lock);
    {
     CiWriteAccountData(CfgCreateFolder(f, name), a);
    }
    Unlock(a->lock);
   }
  }
 }
 UnlockList(c->AccountList);
}
