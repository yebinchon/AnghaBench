
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buffer; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;



bool vc_container_bits_valid(VC_CONTAINER_BITS_T *bit_stream)
{
   return (bit_stream->buffer != ((void*)0));
}
