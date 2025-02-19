
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int bufsize; unsigned int bufptr; int write_buffer; int buffers; int pSourceVoice; scalar_t__ buf; int hEvent; } ;
typedef TYPE_1__ xaudio2_t ;
struct TYPE_7__ {TYPE_1__* xa; scalar_t__ nonblock; } ;
typedef TYPE_2__ xa_t ;
typedef int uint8_t ;
typedef int ssize_t ;
struct TYPE_8__ {unsigned int AudioBytes; int * pContext; scalar_t__ LoopCount; scalar_t__ LoopLength; scalar_t__ LoopBegin; scalar_t__ PlayLength; scalar_t__ PlayBegin; scalar_t__ pAudioData; scalar_t__ Flags; } ;
typedef TYPE_3__ XAUDIO2_BUFFER ;
typedef int LONG ;


 scalar_t__ FAILED (int ) ;
 int INFINITE ;
 int IXAudio2SourceVoice_SubmitSourceBuffer (int ,TYPE_3__*,int *) ;
 int InterlockedIncrement (int volatile*) ;
 int MAX_BUFFERS ;
 int MAX_BUFFERS_MASK ;
 unsigned int MIN (unsigned int,unsigned int) ;
 int WaitForSingleObject (int ,int ) ;
 size_t XAUDIO2_WRITE_AVAILABLE (TYPE_1__*) ;
 int memcpy (scalar_t__,int const*,unsigned int) ;

__attribute__((used)) static ssize_t xa_write(void *data, const void *buf, size_t size)
{
   unsigned bytes;
   xa_t *xa = (xa_t*)data;
   xaudio2_t *handle = xa->xa;
   const uint8_t *buffer = (const uint8_t*)buf;

   if (xa->nonblock)
   {
      size_t avail = XAUDIO2_WRITE_AVAILABLE(xa->xa);

      if (avail == 0)
         return 0;
      if (avail < size)
         size = avail;
   }

   bytes = size;

   while (bytes)
   {
      unsigned need = MIN(bytes, handle->bufsize - handle->bufptr);

      memcpy(handle->buf + handle->write_buffer *
            handle->bufsize + handle->bufptr,
            buffer, need);

      handle->bufptr += need;
      buffer += need;
      bytes -= need;

      if (handle->bufptr == handle->bufsize)
      {
         XAUDIO2_BUFFER xa2buffer;

         while (handle->buffers == MAX_BUFFERS - 1)
            WaitForSingleObject(handle->hEvent, INFINITE);

         xa2buffer.Flags = 0;
         xa2buffer.AudioBytes = handle->bufsize;
         xa2buffer.pAudioData = handle->buf + handle->write_buffer * handle->bufsize;
         xa2buffer.PlayBegin = 0;
         xa2buffer.PlayLength = 0;
         xa2buffer.LoopBegin = 0;
         xa2buffer.LoopLength = 0;
         xa2buffer.LoopCount = 0;
         xa2buffer.pContext = ((void*)0);

         if (FAILED(IXAudio2SourceVoice_SubmitSourceBuffer(
                     handle->pSourceVoice, &xa2buffer, ((void*)0))))
         {
            if (size > 0)
               return -1;
            return 0;
         }

         InterlockedIncrement((LONG volatile*)&handle->buffers);
         handle->bufptr = 0;
         handle->write_buffer = (handle->write_buffer + 1) & MAX_BUFFERS_MASK;
      }
   }

   return size;
}
