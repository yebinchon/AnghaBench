
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ bits; int bytes; int const* buffer; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;


 int vc_container_assert (int ) ;

void vc_container_bits_init(VC_CONTAINER_BITS_T *bit_stream,
      const uint8_t *buffer,
      uint32_t available)
{
   vc_container_assert(buffer && (buffer != (const uint8_t *)1));



   bit_stream->buffer = buffer - 1;
   bit_stream->bytes = available;
   bit_stream->bits = 0;
}
