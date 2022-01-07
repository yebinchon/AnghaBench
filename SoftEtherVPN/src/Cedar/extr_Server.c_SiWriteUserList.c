
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Name; } ;
typedef TYPE_1__ USER ;
typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int FOLDER ;


 int CfgCreateFolder (int *,int ) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int SiWriteUserCfg (int ,TYPE_1__*) ;
 int UnlockList (int *) ;

void SiWriteUserList(FOLDER *f, LIST *o)
{

 if (f == ((void*)0) || o == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(o);i++)
  {
   USER *u = LIST_DATA(o, i);
   SiWriteUserCfg(CfgCreateFolder(f, u->Name), u);
  }
 }
 UnlockList(o);
}
