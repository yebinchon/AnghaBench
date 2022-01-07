
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bits; scalar_t__ bytes; } ;
typedef TYPE_1__ VC_CONTAINER_BITS_T ;



void vc_container_bits_reset(VC_CONTAINER_BITS_T *bit_stream)
{
   bit_stream->bytes = 0;
   bit_stream->bits = 0;
}
