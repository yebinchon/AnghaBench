
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef scalar_t__ UINT ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int MAX_SIZE ;
 scalar_t__ MsiGetProductInfoA (char*,char*,char*,int*) ;
 int StrCpy (char*,scalar_t__,char*) ;

bool ViMsiGetProductInfo(char *product_code, char *name, char *buf, UINT size)
{
 UINT ret;
 char tmp[MAX_SIZE];
 DWORD sz;

 if (product_code == ((void*)0) || name == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }

 sz = sizeof(tmp);

 ret = MsiGetProductInfoA(product_code, name, tmp, &sz);
 if (ret != ERROR_SUCCESS)
 {
  return 0;
 }

 StrCpy(buf, size, tmp);

 return 1;
}
