
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ RecvKey; scalar_t__ SendKey; int SendFifo; int RecvFifo; int Sock; } ;
typedef TYPE_1__ TCPSOCK ;


 int Disconnect (int ) ;
 int Free (TYPE_1__*) ;
 int FreeCrypt (scalar_t__) ;
 int ReleaseFifo (int ) ;
 int ReleaseSock (int ) ;

void FreeTcpSock(TCPSOCK *ts)
{

 if (ts == ((void*)0))
 {
  return;
 }

 Disconnect(ts->Sock);
 ReleaseSock(ts->Sock);
 ReleaseFifo(ts->RecvFifo);
 ReleaseFifo(ts->SendFifo);

 if (ts->SendKey)
 {
  FreeCrypt(ts->SendKey);
 }
 if (ts->RecvKey)
 {
  FreeCrypt(ts->RecvKey);
 }

 Free(ts);
}
