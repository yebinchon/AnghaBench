
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int SRes ;


 int LZMA2_DIC_SIZE_FROM_PROP (int) ;
 scalar_t__ LZMA2_LCLP_MAX ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;

__attribute__((used)) static SRes Lzma2Dec_GetOldProps(uint8_t prop, uint8_t *props)
{
   uint32_t dicSize;
   if (prop > 40)
      return SZ_ERROR_UNSUPPORTED;
   dicSize = (prop == 40) ? 0xFFFFFFFF : LZMA2_DIC_SIZE_FROM_PROP(prop);
   props[0] = (uint8_t)LZMA2_LCLP_MAX;
   props[1] = (uint8_t)(dicSize);
   props[2] = (uint8_t)(dicSize >> 8);
   props[3] = (uint8_t)(dicSize >> 16);
   props[4] = (uint8_t)(dicSize >> 24);
   return SZ_OK;
}
