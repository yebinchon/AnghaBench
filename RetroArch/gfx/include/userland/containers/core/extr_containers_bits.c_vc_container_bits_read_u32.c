
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int bits; int* buffer; int bytes; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;


 int vc_container_assert (int) ;
 int vc_container_bits_available (TYPE_1__*) ;
 int vc_container_bits_invalidate (TYPE_1__*) ;

uint32_t vc_container_bits_read_u32(VC_CONTAINER_BITS_T *bit_stream,
      uint32_t value_bits)
{
   uint32_t value = 0;
   uint32_t needed = value_bits;
   uint32_t bits;

   vc_container_assert(value_bits <= 32);

   if (needed > vc_container_bits_available(bit_stream))
      return vc_container_bits_invalidate(bit_stream);

   bits = bit_stream->bits;
   while (needed)
   {
      uint32_t take;

      if (!bits)
      {
         bit_stream->bytes--;
         bit_stream->buffer++;
         bits = 8;
      }

      take = bits;
      if (needed < take) take = needed;

      bits -= take;
      needed -= take;

      value <<= take;
      if (take == 8)
         value |= *bit_stream->buffer;
      else
         value |= (*bit_stream->buffer >> bits) & ((1 << take) - 1);
   }

   bit_stream->bits = bits;
   return value;
}
