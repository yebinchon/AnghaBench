
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int WFCNativeStreamType ;


 int wfc_server_stream_signal_mm_image_data (int ,int ) ;

void wfc_stream_signal_mm_image_data(WFCNativeStreamType stream, uint32_t im)
{
   wfc_server_stream_signal_mm_image_data(stream, im);
}
