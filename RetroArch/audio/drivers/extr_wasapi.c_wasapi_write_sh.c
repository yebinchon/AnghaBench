
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t engine_buffer_size; size_t frame_size; int client; int write_event; scalar_t__ blocking; scalar_t__ buffer; } ;
typedef TYPE_1__ wasapi_t ;
typedef int ssize_t ;
typedef size_t UINT32 ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ FAILED (int ) ;
 int INFINITE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int _IAudioClient_GetCurrentPadding (int ,size_t*) ;
 size_t fifo_read_avail (scalar_t__) ;
 int fifo_write (scalar_t__,void const*,int) ;
 size_t fifo_write_avail (scalar_t__) ;
 int wasapi_flush (TYPE_1__*,void const*,int) ;
 int wasapi_flush_buffer (TYPE_1__*,int) ;

__attribute__((used)) static ssize_t wasapi_write_sh(wasapi_t *w, const void * data, size_t size)
{
   DWORD ir;
   HRESULT hr;
   size_t write_avail = 0;
   ssize_t written = -1;
   UINT32 padding = 0;

   if (w->buffer)
   {
      write_avail = fifo_write_avail(w->buffer);
      if (!write_avail)
      {
         size_t read_avail = 0;

         if (w->blocking)
         {
            ir = WaitForSingleObject(w->write_event, INFINITE);
            if (!(ir == WAIT_OBJECT_0))
               return -1;
         }

         hr = _IAudioClient_GetCurrentPadding(w->client, &padding);
         if (FAILED(hr))
            return -1;

         read_avail = fifo_read_avail(w->buffer);
         write_avail = w->engine_buffer_size - padding * w->frame_size;
         written = read_avail < write_avail ? read_avail : write_avail;
         if (written)
            if (!wasapi_flush_buffer(w, written))
               return -1;
      }

      write_avail = fifo_write_avail(w->buffer);
      written = size < write_avail ? size : write_avail;
      if (written)
         fifo_write(w->buffer, data, written);
   }
   else
   {
      if (w->blocking)
      {
         ir = WaitForSingleObject(w->write_event, INFINITE);
         if (!(ir == WAIT_OBJECT_0))
            return -1;
      }

      hr = _IAudioClient_GetCurrentPadding(w->client, &padding);
      if (FAILED(hr))
         return -1;

      write_avail = w->engine_buffer_size - padding * w->frame_size;
      if (!write_avail)
         return 0;

      written = size < write_avail ? size : write_avail;
      if (written)
         if (!wasapi_flush(w, data, written))
            return -1;
   }

   return written;
}
