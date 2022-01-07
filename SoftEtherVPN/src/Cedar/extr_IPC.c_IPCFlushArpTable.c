
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPC ;


 int IPCFlushArpTableEx (int *,int ) ;

void IPCFlushArpTable(IPC *ipc)
{
 IPCFlushArpTableEx(ipc, 0);
}
