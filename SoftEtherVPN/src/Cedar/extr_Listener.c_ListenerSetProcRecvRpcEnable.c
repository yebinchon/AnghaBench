
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int listener_proc_recv_rpc ;

void ListenerSetProcRecvRpcEnable(bool b)
{
 listener_proc_recv_rpc = b;
}
