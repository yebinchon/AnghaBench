
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;
typedef int WPADDataCallback ;


 scalar_t__ WPAD_CHAN_0 ;
 scalar_t__ WPAD_ERR_NONE ;
 scalar_t__ WPAD_MAX_WIIMOTES ;
 scalar_t__ pad_readpending_temp (scalar_t__) ;

s32 WPAD_ReadPending(s32 chan, WPADDataCallback datacb)
{
   u32 i;
   s32 count = 0;
   s32 ret;

   for(i= WPAD_CHAN_0; i < WPAD_MAX_WIIMOTES; i++)
      if((ret = pad_readpending_temp(i)) >= WPAD_ERR_NONE)
         count += ret;
   return count;
}
