
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct CAPTUREBLOCK {TYPE_1__* Buf; } ;
struct TYPE_6__ {int Socket; int SocketBsdIf; struct TYPE_6__* Title; struct TYPE_6__* Name; int Cancel; struct TYPE_6__* Buffer; int Queue; int CaptureThread; int Pcap; int * Tap; scalar_t__ IsRawIpMode; } ;
typedef TYPE_1__ ETH ;


 int CloseEthLinuxIpRaw (TYPE_1__*) ;
 int EthSetMtu (TYPE_1__*,int ) ;
 int Free (TYPE_1__*) ;
 int FreeCaptureBlock (struct CAPTUREBLOCK*) ;
 int FreeTap (int *) ;
 struct CAPTUREBLOCK* GetNext (int ) ;
 int INFINITE ;
 int INVALID_SOCKET ;
 int ReleaseCancel (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseThread (int ) ;
 int WaitThread (int ,int ) ;
 int close (int) ;
 int closesocket (int) ;
 int pcap_breakloop (int ) ;
 int pcap_close (int ) ;

void CloseEth(ETH *e)
{

 if (e == ((void*)0))
 {
  return;
 }

 if (e->IsRawIpMode)
 {
  CloseEthLinuxIpRaw(e);

  return;
 }

 if (e->Tap != ((void*)0))
 {

  FreeTap(e->Tap);

 }
 ReleaseCancel(e->Cancel);
 Free(e->Name);
 Free(e->Title);


 EthSetMtu(e, 0);

 if (e->Socket != INVALID_SOCKET)
 {



  closesocket(e->Socket);







 }

 Free(e);
}
