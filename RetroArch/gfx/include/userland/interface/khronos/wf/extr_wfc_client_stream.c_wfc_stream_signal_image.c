
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WFC_STREAM_IMAGE_T ;
typedef int WFCNativeStreamType ;


 int wfc_server_stream_signal_image (int ,int const*) ;

void wfc_stream_signal_image(WFCNativeStreamType stream,
      const WFC_STREAM_IMAGE_T *image)
{
   wfc_server_stream_signal_image(stream, image);
}
