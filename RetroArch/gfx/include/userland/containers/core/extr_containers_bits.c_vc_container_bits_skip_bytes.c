
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int bits; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;


 int vc_container_assert (int) ;
 int vc_container_bits_skip (TYPE_1__*,int) ;

void vc_container_bits_skip_bytes(VC_CONTAINER_BITS_T *bit_stream,
      uint32_t bytes_to_skip)
{

   vc_container_assert(!bit_stream->bits);

   vc_container_bits_skip(bit_stream, bytes_to_skip << 3);
}
