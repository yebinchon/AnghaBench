
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int bytes; scalar_t__ bits; int buffer; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;



uint32_t vc_container_bits_available(const VC_CONTAINER_BITS_T *bit_stream)
{
   if (!bit_stream->buffer)
      return 0;
   return (bit_stream->bytes << 3) + bit_stream->bits;
}
