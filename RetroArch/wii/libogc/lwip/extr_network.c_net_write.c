
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int net_send (int ,void const*,int ,int ) ;

s32 net_write(s32 s,const void *data,s32 size)
{
 return net_send(s,data,size,0);
}
