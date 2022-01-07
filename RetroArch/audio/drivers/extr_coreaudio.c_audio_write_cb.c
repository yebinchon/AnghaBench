
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cond; int lock; int buffer; } ;
typedef TYPE_2__ coreaudio_t ;
typedef int UInt32 ;
struct TYPE_7__ {int mNumberBuffers; TYPE_1__* mBuffers; } ;
struct TYPE_5__ {unsigned int mDataByteSize; void* mData; } ;
typedef int OSStatus ;
typedef int AudioUnitRenderActionFlags ;
typedef int AudioTimeStamp ;
typedef TYPE_3__ AudioBufferList ;


 int fifo_read (int ,void*,unsigned int) ;
 unsigned int fifo_read_avail (int ) ;
 int kAudioUnitRenderAction_OutputIsSilence ;
 int memset (void*,int ,unsigned int) ;
 int noErr ;
 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static OSStatus audio_write_cb(void *userdata,
      AudioUnitRenderActionFlags *action_flags,
      const AudioTimeStamp *time_stamp, UInt32 bus_number,
      UInt32 number_frames, AudioBufferList *io_data)
{
   unsigned write_avail;
   void *outbuf = ((void*)0);
   coreaudio_t *dev = (coreaudio_t*)userdata;

   (void)time_stamp;
   (void)bus_number;
   (void)number_frames;

   if (!io_data || io_data->mNumberBuffers != 1)
      return noErr;

   write_avail = io_data->mBuffers[0].mDataByteSize;
   outbuf = io_data->mBuffers[0].mData;

   slock_lock(dev->lock);

   if (fifo_read_avail(dev->buffer) < write_avail)
   {
      *action_flags = kAudioUnitRenderAction_OutputIsSilence;


      memset(outbuf, 0, write_avail);

      slock_unlock(dev->lock);


      scond_signal(dev->cond);
      return noErr;
   }

   fifo_read(dev->buffer, outbuf, write_avail);
   slock_unlock(dev->lock);
   scond_signal(dev->cond);
   return noErr;
}
