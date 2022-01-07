
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UDPLISTENER_RECV_PROC ;
typedef int UDPLISTENER ;
typedef int IP ;


 int INFINITE ;
 int * NewUdpListenerEx (int *,void*,int *,int ) ;

UDPLISTENER *NewUdpListener(UDPLISTENER_RECV_PROC *recv_proc, void *param, IP *listen_ip)
{
 return NewUdpListenerEx(recv_proc, param, listen_ip, INFINITE);
}
