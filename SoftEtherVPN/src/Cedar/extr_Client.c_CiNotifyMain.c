
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NotifyCancelList; scalar_t__ Halt; } ;
typedef int SOCKSET ;
typedef int SOCK ;
typedef TYPE_1__ CLIENT ;
typedef int CANCEL ;


 int Add (int ,int *) ;
 int AddSockSet (int *,int *) ;
 int Delete (int ,int *) ;
 int Disconnect (int *) ;
 int INFINITE ;
 int InitSockSet (int *) ;
 int LockList (int ) ;
 int * NewCancel () ;
 int ReleaseCancel (int *) ;
 int Select (int *,int ,int *,int *) ;
 scalar_t__ Send (int *,char*,int,int) ;
 int UnlockList (int ) ;

void CiNotifyMain(CLIENT *c, SOCK *s)
{
 CANCEL *cancel;

 if (c == ((void*)0) || s == ((void*)0))
 {
  return;
 }


 cancel = NewCancel();
 LockList(c->NotifyCancelList);
 {
  Add(c->NotifyCancelList, cancel);
 }
 UnlockList(c->NotifyCancelList);


 while (1)
 {
  char ch = '@';
  SOCKSET set;
  InitSockSet(&set);
  AddSockSet(&set, s);
  Select(&set, INFINITE, cancel, ((void*)0));

  if (c->Halt)
  {

   break;
  }


  if (Send(s, &ch, 1, 0) == 0)
  {

   break;
  }
 }


 Disconnect(s);


 LockList(c->NotifyCancelList);
 {
  Delete(c->NotifyCancelList, cancel);
 }
 UnlockList(c->NotifyCancelList);

 ReleaseCancel(cancel);
}
