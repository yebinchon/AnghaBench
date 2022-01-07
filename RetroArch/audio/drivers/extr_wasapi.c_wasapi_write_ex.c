
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t engine_buffer_size; int buffer; scalar_t__ blocking; int write_event; } ;
typedef TYPE_1__ wasapi_t ;
typedef int ssize_t ;
typedef scalar_t__ DWORD ;


 int INFINITE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int fifo_write (int ,void const*,int) ;
 size_t fifo_write_avail (int ) ;
 int wasapi_flush_buffer (TYPE_1__*,size_t) ;

__attribute__((used)) static ssize_t wasapi_write_ex(wasapi_t *w, const void * data, size_t size)
{
   ssize_t written = 0;
   size_t write_avail = fifo_write_avail(w->buffer);

   if (!write_avail)
   {
      DWORD ir = WaitForSingleObject(
            w->write_event, w->blocking ? INFINITE : 0);
      if (ir != WAIT_OBJECT_0)
      {
         if (w->blocking)
            return -1;
         return 0;
      }

      if (!wasapi_flush_buffer(w, w->engine_buffer_size))
         return -1;

      write_avail = w->engine_buffer_size;
   }

   written = size < write_avail ? size : write_avail;
   fifo_write(w->buffer, data, written);

   return written;
}
