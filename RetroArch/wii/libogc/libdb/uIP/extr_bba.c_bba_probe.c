
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uip_netif {int dummy; } ;
typedef int s8_t ;
typedef int s32 ;


 scalar_t__ BBA_CID ;
 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_2 ;
 scalar_t__ EXI_Lock (int ,int ,int *) ;
 int EXI_Unlock (int ) ;
 scalar_t__ __bba_read_cid () ;
 int bba_init_one (struct uip_netif*) ;

__attribute__((used)) static s8_t bba_probe(struct uip_netif *dev)
{
 s32 ret;
 u32 cid;

 if(EXI_Lock(EXI_CHANNEL_0,EXI_DEVICE_2,((void*)0))==0) return -1;

 cid = __bba_read_cid();
 if(cid!=BBA_CID) {
  EXI_Unlock(EXI_CHANNEL_0);
  return -1;
 }

 ret = bba_init_one(dev);

 EXI_Unlock(EXI_CHANNEL_0);
 return ret;
}
