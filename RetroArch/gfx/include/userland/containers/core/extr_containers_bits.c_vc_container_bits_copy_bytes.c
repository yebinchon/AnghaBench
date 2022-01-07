
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ bytes; scalar_t__ buffer; int bits; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;


 int memcpy (int *,scalar_t__,scalar_t__) ;
 int vc_container_assert (int) ;
 int vc_container_bits_invalidate (TYPE_1__*) ;

void vc_container_bits_copy_bytes(VC_CONTAINER_BITS_T *bit_stream,
      uint32_t bytes_to_copy,
      uint8_t *dst)
{
   vc_container_assert(!bit_stream->bits);

   if (bit_stream->bytes < bytes_to_copy)
   {

      vc_container_bits_invalidate(bit_stream);
      return;
   }


   memcpy(dst, bit_stream->buffer + 1, bytes_to_copy);
   bit_stream->buffer += bytes_to_copy;
   bit_stream->bytes -= bytes_to_copy;
}
