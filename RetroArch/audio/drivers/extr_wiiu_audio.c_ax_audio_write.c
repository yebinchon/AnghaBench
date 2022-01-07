
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
typedef size_t ssize_t ;
struct TYPE_3__ {size_t written; size_t pos; int mvoice; int spinlock; int * buffer_r; int * buffer_l; scalar_t__ nonblocking; } ;
typedef TYPE_1__ ax_audio_t ;


 scalar_t__ AXIsMultiVoiceRunning (int ) ;
 size_t AX_AUDIO_COUNT ;
 size_t AX_AUDIO_MAX_FREE ;
 size_t AX_AUDIO_SAMPLE_COUNT ;
 int DCStoreRange (int *,int) ;
 int DCStoreRangeNoSync (int *,int) ;
 scalar_t__ OSUninterruptibleSpinLock_Acquire (int *) ;
 int OSUninterruptibleSpinLock_Release (int *) ;
 int OSYieldThread () ;
 size_t ax_audio_limit (int) ;
 int ax_audio_start (TYPE_1__*,int) ;

__attribute__((used)) static ssize_t ax_audio_write(void* data, const void* buf, size_t size)
{
   uint32_t i;
   size_t countAvail = 0;
   ax_audio_t* ax = (ax_audio_t*)data;
   const uint16_t* src = buf;
   size_t count = size >> 2;

   if(!size || (size & 0x3))
      return 0;

   if(count > AX_AUDIO_MAX_FREE)
      count = AX_AUDIO_MAX_FREE;

   countAvail = ((ax->written > AX_AUDIO_MAX_FREE) ? 0 : (AX_AUDIO_MAX_FREE - ax->written));

   if (ax->nonblocking)
   {

      if(countAvail < AX_AUDIO_SAMPLE_COUNT)
         count = 0;
   }
   else if(countAvail < count)
   {

      while(AXIsMultiVoiceRunning(ax->mvoice) && (countAvail < count))
      {
         OSYieldThread();
         countAvail = (ax->written > AX_AUDIO_MAX_FREE ? 0 : (AX_AUDIO_MAX_FREE - ax->written));
      }
   }


   if(count > countAvail)
      count = countAvail;


   if(count > 0)
   {

      size_t startPos = ax->pos;
      int flushP2needed = 0;
      int flushP2 = 0;

      for (i = 0; i < (count << 1); i += 2)
      {
         ax->buffer_l[ax->pos] = src[i];
         ax->buffer_r[ax->pos] = src[i + 1];
         ax->pos = ax_audio_limit(ax->pos + 1);


         if(ax->pos == 0)
         {
            flushP2needed = 1;
            flushP2 = ((count << 1) - i);
            DCStoreRangeNoSync(ax->buffer_l+startPos, (AX_AUDIO_COUNT-startPos) << 1);
            DCStoreRangeNoSync(ax->buffer_r+startPos, (AX_AUDIO_COUNT-startPos) << 1);
         }
      }


      if(!flushP2needed)
      {
         DCStoreRangeNoSync(ax->buffer_l+startPos, count << 1);
         DCStoreRange(ax->buffer_r+startPos, count << 1);
      }

      else if(flushP2 > 0)
      {
         DCStoreRangeNoSync(ax->buffer_l, flushP2);
         DCStoreRange(ax->buffer_r, flushP2);
      }


      if(OSUninterruptibleSpinLock_Acquire(&ax->spinlock))
      {
         ax->written += count;
         OSUninterruptibleSpinLock_Release(&ax->spinlock);
      }
   }





   if(!AXIsMultiVoiceRunning(ax->mvoice))
      ax_audio_start(ax, 0);


   return (count << 2);
}
