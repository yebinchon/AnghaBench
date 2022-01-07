
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int bits; int bytes; int buffer; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;


 int vc_container_bits_available (TYPE_1__*) ;
 int vc_container_bits_invalidate (TYPE_1__*) ;

void vc_container_bits_skip(VC_CONTAINER_BITS_T *bit_stream,
      uint32_t bits_to_skip)
{
   uint32_t have_bits;
   uint32_t new_bytes;

   have_bits = vc_container_bits_available(bit_stream);
   if (have_bits < bits_to_skip)
   {
      vc_container_bits_invalidate(bit_stream);
      return;
   }

   have_bits -= bits_to_skip;
   new_bytes = have_bits >> 3;
   bit_stream->bits = have_bits & 7;
   bit_stream->buffer += (bit_stream->bytes - new_bytes);
   bit_stream->bytes = new_bytes;
}
