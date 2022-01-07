
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t s32 ;


 size_t WPAD_ERR_NONE ;
 size_t WPAD_ERR_QUEUE_EMPTY ;
 size_t WPAD_ReadEvent (size_t,int *) ;
 int * wpaddata ;

__attribute__((used)) static s32 pad_readpending_temp(s32 chan)
{
   s32 count = 0;
   s32 ret;

   while(1)
   {
      ret = WPAD_ReadEvent(chan, &wpaddata[chan]);
      if(ret < WPAD_ERR_NONE)
         break;
      count++;
   }
   if(ret == WPAD_ERR_QUEUE_EMPTY) return count;
   return ret;
}
