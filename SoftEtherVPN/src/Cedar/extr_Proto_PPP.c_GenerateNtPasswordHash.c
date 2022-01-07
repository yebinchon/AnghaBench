
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef char UCHAR ;


 int Free (char*) ;
 int HashMd4 (char*,char*,int) ;
 int StrLen (char*) ;
 char* ZeroMalloc (int) ;

void GenerateNtPasswordHash(UCHAR *dst, char *password)
{
 UCHAR *tmp;
 UINT tmp_size;
 UINT i, len;

 if (dst == ((void*)0) || password == ((void*)0))
 {
  return;
 }


 len = StrLen(password);
 tmp_size = len * 2;

 tmp = ZeroMalloc(tmp_size);

 for (i = 0;i < len;i++)
 {
  tmp[i * 2] = password[i];
 }


 HashMd4(dst, tmp, tmp_size);

 Free(tmp);
}
