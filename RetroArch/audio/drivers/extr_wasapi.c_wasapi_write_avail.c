
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t engine_buffer_size; int frame_size; int client; scalar_t__ buffer; } ;
typedef TYPE_1__ wasapi_t ;
typedef int UINT32 ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int _IAudioClient_GetCurrentPadding (int ,int*) ;
 size_t fifo_write_avail (scalar_t__) ;

__attribute__((used)) static size_t wasapi_write_avail(void *wh)
{
   HRESULT hr;
   wasapi_t *w = (wasapi_t*)wh;
   UINT32 padding = 0;

   if (w->buffer)
      return fifo_write_avail(w->buffer);

   hr = _IAudioClient_GetCurrentPadding(w->client, &padding);
   if (FAILED(hr))
      return 0;

   return w->engine_buffer_size - padding * w->frame_size;
}
