
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int B64_Decode (void*,char*,int) ;
 int Copy (char*,char*,int) ;
 int Free (char*) ;
 char* Malloc (int) ;
 int Safe64ToBase64 (char*) ;
 int StrLen (char*) ;

UINT DecodeSafe64(void *dst, char *src, UINT src_strlen)
{
 char *tmp;
 UINT ret;
 if (dst == ((void*)0) || src == ((void*)0))
 {
  return 0;
 }

 if (src_strlen == 0)
 {
  src_strlen = StrLen(src);
 }

 tmp = Malloc(src_strlen + 1);
 Copy(tmp, src, src_strlen);
 tmp[src_strlen] = 0;
 Safe64ToBase64(tmp);

 ret = B64_Decode(dst, tmp, src_strlen);
 Free(tmp);

 return ret;
}
