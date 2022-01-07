
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int net_recvfrom (int ,void*,int ,int ,int *,int *) ;

s32 net_recv(s32 s,void *mem,s32 len,u32 flags)
{
 return net_recvfrom(s,mem,len,flags,((void*)0),((void*)0));
}
