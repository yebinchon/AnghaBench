
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int net_recvfrom (int ,void*,int ,int ,int *,int *) ;

s32 net_read(s32 s,void *mem,s32 len)
{
 return net_recvfrom(s,mem,len,0,((void*)0),((void*)0));
}
