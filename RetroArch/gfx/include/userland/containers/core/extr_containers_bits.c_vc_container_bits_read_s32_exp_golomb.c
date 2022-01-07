
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int VC_CONTAINER_BITS_T ;


 int vc_container_bits_invalidate (int *) ;
 int vc_container_bits_read_u32_exp_golomb (int *) ;

int32_t vc_container_bits_read_s32_exp_golomb(VC_CONTAINER_BITS_T *bit_stream)
{
   uint32_t uval;

   uval = vc_container_bits_read_u32_exp_golomb(bit_stream);



   if (uval == 0xFFFFFFFF)
      return vc_container_bits_invalidate(bit_stream);




   return ((int32_t)((uval & 1) << 1) - 1) * (int32_t)((uval >> 1) + (uval & 1));
}
