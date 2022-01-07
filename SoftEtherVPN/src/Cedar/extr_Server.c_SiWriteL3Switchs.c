
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int L3SwList; } ;
struct TYPE_8__ {int lock; int Name; } ;
struct TYPE_7__ {TYPE_3__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ L3SW ;
typedef int FOLDER ;
typedef TYPE_3__ CEDAR ;


 int * CfgCreateFolder (int *,int ) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int SiWriteL3SwitchCfg (int *,TYPE_2__*) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void SiWriteL3Switchs(FOLDER *f, SERVER *s)
{
 UINT i;
 FOLDER *folder;
 CEDAR *c;

 if (f == ((void*)0) || s == ((void*)0))
 {
  return;
 }
 c = s->Cedar;

 LockList(c->L3SwList);
 {
  for (i = 0;i < LIST_NUM(c->L3SwList);i++)
  {
   L3SW *sw = LIST_DATA(c->L3SwList, i);

   Lock(sw->lock);
   {
    folder = CfgCreateFolder(f, sw->Name);

    SiWriteL3SwitchCfg(folder, sw);
   }
   Unlock(sw->lock);
  }
 }
 UnlockList(c->L3SwList);
}
