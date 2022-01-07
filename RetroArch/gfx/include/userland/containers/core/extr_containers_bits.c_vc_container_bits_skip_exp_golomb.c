
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_BITS_T ;


 int vc_container_bits_get_leading_zero_bits (int *) ;
 int vc_container_bits_skip (int *,int ) ;

void vc_container_bits_skip_exp_golomb(VC_CONTAINER_BITS_T *bit_stream)
{
   vc_container_bits_skip(bit_stream, vc_container_bits_get_leading_zero_bits(bit_stream));
}
