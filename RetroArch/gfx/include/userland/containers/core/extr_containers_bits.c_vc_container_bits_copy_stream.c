
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_BITS_T ;


 int memcpy (int *,int const*,int) ;

void vc_container_bits_copy_stream(VC_CONTAINER_BITS_T *dst,
      const VC_CONTAINER_BITS_T *src)
{
   memcpy(dst, src, sizeof(VC_CONTAINER_BITS_T));
}
