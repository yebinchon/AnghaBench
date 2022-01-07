
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int WFCNativeStreamType ;


 int wfc_stream_create_for_context_nbufs (int ,int ,int ,int ) ;

uint32_t wfc_stream_create_for_context
   (WFCNativeStreamType stream, uint32_t width, uint32_t height)

{
   return wfc_stream_create_for_context_nbufs(stream, width, height, 0);
}
