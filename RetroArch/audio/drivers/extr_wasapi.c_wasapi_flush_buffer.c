
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t frame_size; int renderer; int buffer; } ;
typedef TYPE_1__ wasapi_t ;
typedef size_t UINT32 ;
typedef int HRESULT ;
typedef int BYTE ;


 scalar_t__ FAILED (int ) ;
 int _IAudioRenderClient_GetBuffer (int ,size_t,int **) ;
 int _IAudioRenderClient_ReleaseBuffer (int ,size_t,int ) ;
 int fifo_read (int ,int *,size_t) ;

__attribute__((used)) static bool wasapi_flush_buffer(wasapi_t * w, size_t size)
{
   BYTE *dest = ((void*)0);
   UINT32 frame_count = size / w->frame_size;
   HRESULT hr = _IAudioRenderClient_GetBuffer(
         w->renderer, frame_count, &dest);
   if (FAILED(hr))
      return 0;

   fifo_read(w->buffer, dest, size);
   hr = _IAudioRenderClient_ReleaseBuffer(
         w->renderer, frame_count,
         0);
   if (FAILED(hr))
      return 0;

   return 1;
}
