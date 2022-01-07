
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;
typedef int IP ;


 int * NewUDP (int ) ;
 int ReleaseSock (int *) ;
 int SendTo (int *,int *,int ,void*,int ) ;
 int SetIP (int *,int ,int ,int ,int ) ;

void IPsecIkeSendUdpForDebug(UINT dst_port, UINT dst_ip, void *data, UINT size)
{
 SOCK *s = NewUDP(0);
 IP d;

 SetIP(&d, dst_ip, dst_ip, dst_ip, dst_ip);

 SendTo(s, &d, dst_port, data, size);

 ReleaseSock(s);
}
