
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int B64_Decode (char*,char*,int ) ;
 int StrLen (char*) ;

UINT Decode64(char *dst, char *src)
{

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return 0;
 }

 return B64_Decode(dst, src, StrLen(src));
}
