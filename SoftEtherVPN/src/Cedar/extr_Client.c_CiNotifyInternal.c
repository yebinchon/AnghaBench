
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int NotifyCancelList; } ;
typedef TYPE_1__ CLIENT ;
typedef int CANCEL ;


 int Cancel (int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

void CiNotifyInternal(CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }


 LockList(c->NotifyCancelList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(c->NotifyCancelList);i++)
  {
   CANCEL *cancel = LIST_DATA(c->NotifyCancelList, i);
   Cancel(cancel);
  }
 }
 UnlockList(c->NotifyCancelList);
}
