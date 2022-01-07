
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* RawIP_TmpBuffer; int Cancel; int RawIcmp; int RawUdp; int RawTcp; struct TYPE_4__* Title; struct TYPE_4__* Name; int RawIpSendQueue; } ;
typedef TYPE_1__ ETH ;
typedef int BUF ;


 int Free (TYPE_1__*) ;
 int FreeBuf (int *) ;
 int * GetNext (int ) ;
 int ReleaseCancel (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseSock (int ) ;

void CloseEthLinuxIpRaw(ETH *e)
{
 if (e == ((void*)0))
 {
  return;
 }

 while (1)
 {
  BUF *buf = GetNext(e->RawIpSendQueue);
  if (buf == ((void*)0))
  {
   break;
  }

  FreeBuf(buf);
 }
 ReleaseQueue(e->RawIpSendQueue);

 Free(e->Name);
 Free(e->Title);

 ReleaseSock(e->RawTcp);
 ReleaseSock(e->RawUdp);
 ReleaseSock(e->RawIcmp);

 ReleaseCancel(e->Cancel);

 Free(e->RawIP_TmpBuffer);

 Free(e);
}
