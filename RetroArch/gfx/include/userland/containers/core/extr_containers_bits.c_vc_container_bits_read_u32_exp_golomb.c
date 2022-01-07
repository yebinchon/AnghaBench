
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_BITS_T ;


 int vc_container_bits_get_leading_zero_bits (int *) ;
 int vc_container_bits_invalidate (int *) ;
 int vc_container_bits_read_u32 (int *,int) ;

uint32_t vc_container_bits_read_u32_exp_golomb(VC_CONTAINER_BITS_T *bit_stream)
{
   uint32_t leading_zero_bits;
   uint32_t codeNum;

   leading_zero_bits = vc_container_bits_get_leading_zero_bits(bit_stream);


   if (leading_zero_bits > 32)
      return vc_container_bits_invalidate(bit_stream);

   codeNum = vc_container_bits_read_u32(bit_stream, leading_zero_bits);

   if (leading_zero_bits == 32)
   {

      if (codeNum)
         return vc_container_bits_invalidate(bit_stream);

      return 0xFFFFFFFF;
   }

   return codeNum + (1 << leading_zero_bits) - 1;
}
