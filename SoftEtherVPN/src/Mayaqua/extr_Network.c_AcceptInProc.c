
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Type; int ListenMode; int InProcAcceptEvent; int UnderlayProtocol; int InProcAcceptQueue; scalar_t__ CancelAccept; scalar_t__ Disconnecting; } ;
typedef TYPE_1__ SOCK ;


 TYPE_1__* GetNext (int ) ;
 int INFINITE ;
 int LockQueue (int ) ;
 scalar_t__ SOCK_INPROC ;
 int SOCK_UNDERLAY_INPROC ;
 int StrCpy (int ,int,int ) ;
 int UnlockQueue (int ) ;
 int Wait (int ,int ) ;

SOCK *AcceptInProc(SOCK *s)
{

 if (s == ((void*)0) || s->Type != SOCK_INPROC || s->ListenMode == 0)
 {
  return ((void*)0);
 }

 while (1)
 {
  SOCK *ret;
  if (s->Disconnecting || s->CancelAccept)
  {
   return ((void*)0);
  }

  LockQueue(s->InProcAcceptQueue);
  {
   ret = GetNext(s->InProcAcceptQueue);
  }
  UnlockQueue(s->InProcAcceptQueue);

  if (ret != ((void*)0))
  {
   StrCpy(ret->UnderlayProtocol, sizeof(ret->UnderlayProtocol), SOCK_UNDERLAY_INPROC);

   return ret;
  }

  Wait(s->InProcAcceptEvent, INFINITE);
 }
}
