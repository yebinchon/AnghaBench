
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int bits; int buffer; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;


 int vc_container_assert (int) ;
 int vc_container_bits_available (TYPE_1__ const*) ;

uint32_t vc_container_bits_bytes_available(const VC_CONTAINER_BITS_T *bit_stream)
{
   if (!bit_stream->buffer)
      return 0;

   vc_container_assert(!bit_stream->bits);

   return vc_container_bits_available(bit_stream) >> 3;
}
