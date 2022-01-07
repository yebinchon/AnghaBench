
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t B64_Encode (char*,void*,size_t) ;
 int Base64ToSafe64 (char*) ;

void EncodeSafe64(char *dst, void *src, UINT src_size)
{
 UINT size;
 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 size = B64_Encode(dst, src, src_size);
 dst[size] = 0;

 Base64ToSafe64(dst);
}
