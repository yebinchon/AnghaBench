
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SI_Busy () ;
 int __pad_resettingbits ;
 int __pad_resettingchan ;

u32 PAD_Sync()
{
 u32 ret = 0;

 if(!__pad_resettingbits && __pad_resettingchan==32) {
  if(SI_Busy()==0) ret = 1;
 }
 return ret;
}
