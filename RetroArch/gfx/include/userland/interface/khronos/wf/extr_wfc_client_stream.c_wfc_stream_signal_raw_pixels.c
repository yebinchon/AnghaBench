
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int WFCNativeStreamType ;


 int wfc_server_stream_signal_raw_pixels (int ,int ,int ,int ,int ,int ,int ) ;

void wfc_stream_signal_raw_pixels(WFCNativeStreamType stream, uint32_t handle,
      uint32_t format, uint32_t w, uint32_t h, uint32_t pitch, uint32_t vpitch)
{
   wfc_server_stream_signal_raw_pixels(stream, handle, format, w, h, pitch, vpitch);
}
