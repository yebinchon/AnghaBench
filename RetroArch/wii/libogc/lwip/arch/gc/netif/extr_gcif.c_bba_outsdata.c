
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXI_CHANNEL_0 ;
 int EXI_ImmEx (int ,void*,int ,int ) ;
 int EXI_WRITE ;

__attribute__((used)) static __inline__ void bba_outsdata(void *val,u32 len)
{
 EXI_ImmEx(EXI_CHANNEL_0,val,len,EXI_WRITE);
}
