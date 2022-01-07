
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPC ;


 int IPCProcessL3EventsEx (int *,int ) ;

void IPCProcessL3Events(IPC *ipc)
{
 IPCProcessL3EventsEx(ipc, 0);
}
