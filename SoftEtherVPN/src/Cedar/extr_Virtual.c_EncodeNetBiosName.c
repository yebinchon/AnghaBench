
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef char UCHAR ;


 char* CharToNetBiosStr (char) ;
 int Copy (char*,char*,int) ;
 int StrLen (char*) ;

void EncodeNetBiosName(UCHAR *dst, char *src)
{
 char tmp[17];
 UINT i;
 UINT copy_len;
 UINT wp;

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 for (i = 0;i < 16;i++)
 {
  tmp[i] = ' ';
 }
 tmp[16] = 0;

 copy_len = StrLen(src);
 if (copy_len > 16)
 {
  copy_len = 16;
 }

 Copy(tmp, src, copy_len);

 wp = 0;

 tmp[15] = 0;

 for (i = 0;i < 16;i++)
 {
  char c = tmp[i];
  char *s = CharToNetBiosStr(c);

  dst[wp++] = s[0];
  dst[wp++] = s[1];
 }
}
