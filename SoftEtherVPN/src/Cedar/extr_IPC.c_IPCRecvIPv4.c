
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IPv4ReceivedQueue; } ;
typedef TYPE_1__ IPC ;
typedef int BLOCK ;


 int * GetNext (int ) ;

BLOCK *IPCRecvIPv4(IPC *ipc)
{
 BLOCK *b;

 if (ipc == ((void*)0))
 {
  return ((void*)0);
 }

 b = GetNext(ipc->IPv4ReceivedQueue);

 return b;
}
