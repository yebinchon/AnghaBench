
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int CaList; } ;
struct TYPE_5__ {TYPE_2__* Cedar; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT ;
typedef TYPE_2__ CEDAR ;


 int CfgCreateFolder (int *,char*) ;
 int CiWriteCACert (TYPE_1__*,int ,int *) ;
 int Format (char*,int,char*,scalar_t__) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int UnlockList (int ) ;

void CiWriteCAList(CLIENT *c, FOLDER *f)
{
 CEDAR *cedar;

 if (c == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 cedar = c->Cedar;

 LockList(cedar->CaList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(cedar->CaList);i++)
  {
   char tmp[MAX_SIZE];
   X *x = LIST_DATA(cedar->CaList, i);
   Format(tmp, sizeof(tmp), "Certificate%u", i);
   CiWriteCACert(c, CfgCreateFolder(f, tmp), x);
  }
 }
 UnlockList(cedar->CaList);
}
