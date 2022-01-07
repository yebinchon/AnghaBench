
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int bits; int * buffer; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;


 int vc_container_assert (int) ;

const uint8_t *vc_container_bits_current_pointer(const VC_CONTAINER_BITS_T *bit_stream)
{
   const uint8_t *buffer = bit_stream->buffer;


   vc_container_assert(!bit_stream->bits);

   return buffer ? (buffer + 1) : ((void*)0);
}
