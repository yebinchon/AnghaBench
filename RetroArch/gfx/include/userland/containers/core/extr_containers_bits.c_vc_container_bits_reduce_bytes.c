
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ bytes; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;


 int vc_container_bits_invalidate (TYPE_1__*) ;

void vc_container_bits_reduce_bytes(VC_CONTAINER_BITS_T *bit_stream,
      uint32_t bytes_to_reduce)
{
   if (bit_stream->bytes >= bytes_to_reduce)
      bit_stream->bytes -= bytes_to_reduce;
   else
      vc_container_bits_invalidate(bit_stream);
}
