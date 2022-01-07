
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int pipe_read; int pipe_write; int SpecialFlag; int pipe_special_read2; int pipe_special_read3; } ;
struct TYPE_10__ {int socket; } ;
struct TYPE_9__ {int IsRawIpMode; int* RawIpMyMacAddr; int RawIP_TmpBufferSize; int RawIP_TmpBuffer; int RawIpSendQueue; int YourIP; int MyIP; TYPE_3__* RawIcmp; TYPE_6__* Cancel; TYPE_3__* RawUdp; TYPE_3__* RawTcp; void* Title; void* Name; } ;
typedef TYPE_1__ ETH ;


 int BRIDGE_SPECIAL_IPRAW_NAME ;
 int ClearSockDfBit (TYPE_3__*) ;
 void* CopyStr (int ) ;
 int Free (TYPE_1__*) ;
 int IPPROTO_ICMP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int IsRawIpBridgeSupported () ;
 int MAKE_SPECIAL_PORT (int ) ;
 int Malloc (int) ;
 TYPE_6__* NewCancel () ;
 int NewQueueFast () ;
 void* NewUDP4 (int ,int *) ;
 int ReleaseSock (TYPE_3__*) ;
 int SetIP (int *,int,int,int,int) ;
 int SetRawSockHeaderIncludeOption (TYPE_3__*,int) ;
 int UnixDeletePipe (int,int) ;
 int UnixSetSocketNonBlockingMode (int,int) ;
 TYPE_1__* ZeroMalloc (int) ;

ETH *OpenEthLinuxIpRaw()
{
 ETH *e;

 if (IsRawIpBridgeSupported() == 0)
 {
  return ((void*)0);
 }

 e = ZeroMalloc(sizeof(ETH));

 e->IsRawIpMode = 1;

 e->RawTcp = NewUDP4(MAKE_SPECIAL_PORT(IPPROTO_TCP), ((void*)0));
 e->RawUdp = NewUDP4(MAKE_SPECIAL_PORT(IPPROTO_UDP), ((void*)0));
 e->RawIcmp = NewUDP4(MAKE_SPECIAL_PORT(IPPROTO_ICMP), ((void*)0));

 if (e->RawTcp == ((void*)0) || e->RawUdp == ((void*)0) || e->RawIcmp == ((void*)0))
 {
  ReleaseSock(e->RawTcp);
  ReleaseSock(e->RawUdp);
  ReleaseSock(e->RawIcmp);

  Free(e);
  return ((void*)0);
 }

 ClearSockDfBit(e->RawTcp);
 ClearSockDfBit(e->RawUdp);
 ClearSockDfBit(e->RawIcmp);

 SetRawSockHeaderIncludeOption(e->RawTcp, 1);
 SetRawSockHeaderIncludeOption(e->RawUdp, 1);
 SetRawSockHeaderIncludeOption(e->RawIcmp, 1);

 e->Name = CopyStr(BRIDGE_SPECIAL_IPRAW_NAME);
 e->Title = CopyStr(BRIDGE_SPECIAL_IPRAW_NAME);
 e->Cancel = NewCancel();

 UnixDeletePipe(e->Cancel->pipe_read, e->Cancel->pipe_write);
 e->Cancel->pipe_read = e->Cancel->pipe_write = -1;

 UnixSetSocketNonBlockingMode(e->RawTcp->socket, 1);
 UnixSetSocketNonBlockingMode(e->RawUdp->socket, 1);
 UnixSetSocketNonBlockingMode(e->RawIcmp->socket, 1);

 e->Cancel->SpecialFlag = 1;
 e->Cancel->pipe_read = e->RawTcp->socket;
 e->Cancel->pipe_special_read2 = e->RawUdp->socket;
 e->Cancel->pipe_special_read3 = e->RawIcmp->socket;

 e->RawIpMyMacAddr[2] = 0x01;
 e->RawIpMyMacAddr[5] = 0x01;

 SetIP(&e->MyIP, 10, 171, 7, 253);
 SetIP(&e->YourIP, 10, 171, 7, 254);

 e->RawIpSendQueue = NewQueueFast();

 e->RawIP_TmpBufferSize = 67000;
 e->RawIP_TmpBuffer = Malloc(e->RawIP_TmpBufferSize);

 return e;
}
