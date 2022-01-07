
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLongf ;
typedef int uLong ;
typedef int Bytef ;


 int Z_DEFAULT_COMPRESSION ;
 int compress2 (int *,int *,int const*,int ,int ) ;

int compress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen)
{
   return compress2(dest, destLen, source, sourceLen, Z_DEFAULT_COMPRESSION);
}
