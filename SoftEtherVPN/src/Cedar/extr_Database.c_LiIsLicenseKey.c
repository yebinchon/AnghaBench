
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int LiStrToKeyBit (int *,char*) ;

bool LiIsLicenseKey(char *str)
{
 UCHAR keybit[23];

 if (str == ((void*)0))
 {
  return 0;
 }

 if (LiStrToKeyBit(keybit, str) == 0)
 {
  return 0;
 }

 return 1;
}
