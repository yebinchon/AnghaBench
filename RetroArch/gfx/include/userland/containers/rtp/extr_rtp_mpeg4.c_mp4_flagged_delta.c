
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_BITS_T ;


 int BITS_READ_U32 (int *,int *,int,char*) ;

__attribute__((used)) static int32_t mp4_flagged_delta(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_BITS_T *au_headers,
      uint32_t delta_length)
{
   uint32_t value = 0;


   if (delta_length && BITS_READ_U32(p_ctx, au_headers, 1, "CTS/DTS delta present"))
   {
      value = BITS_READ_U32(p_ctx, au_headers, delta_length, "CTS/DTS delta");


      if (value & (1 << (delta_length - 1)))
         value |= ~((1 << delta_length) - 1);
   }

   return (int32_t)value;
}
