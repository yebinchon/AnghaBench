
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int bits; int* buffer; int bytes; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;


 int vc_container_bits_available (TYPE_1__*) ;
 int vc_container_bits_invalidate (TYPE_1__*) ;

__attribute__((used)) static uint32_t vc_container_bits_get_leading_zero_bits( VC_CONTAINER_BITS_T *bit_stream )
{
   uint32_t leading_zero_bits;
   uint32_t bits_left = vc_container_bits_available(bit_stream);
   uint32_t bits;
   uint8_t mask, current_byte;

   if (!bits_left)
      return vc_container_bits_invalidate(bit_stream);


   bits = bit_stream->bits;
   if (bits)
   {
      current_byte = *bit_stream->buffer;
      mask = 1 << (bits - 1);
   } else {

      current_byte = 0;
      mask = 0;
   }





   for (leading_zero_bits = 0; leading_zero_bits < bits_left; leading_zero_bits++)
   {
      if (!bits)
      {
         if (!bit_stream->bytes)
            return vc_container_bits_invalidate(bit_stream);
         bit_stream->bytes--;
         current_byte = *(++bit_stream->buffer);
         bits = 8;
         mask = 0x80;
      }

      bits--;
      bits_left--;
      if (current_byte & mask)
         break;

      mask >>= 1;
   }


   if (leading_zero_bits > bits_left)
      return vc_container_bits_invalidate(bit_stream);


   bit_stream->bits = bits;

   return leading_zero_bits;
}
