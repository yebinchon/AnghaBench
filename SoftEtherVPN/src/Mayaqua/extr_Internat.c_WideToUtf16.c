
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef scalar_t__ USHORT ;
typedef int UINT ;


 scalar_t__* Malloc (int) ;
 int UniStrLen (scalar_t__*) ;

USHORT *WideToUtf16(wchar_t *str)
{
 USHORT *ret;
 UINT len;
 UINT ret_size;
 UINT i;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 len = UniStrLen(str);

 ret_size = (len + 1) * 2;
 ret = Malloc(ret_size);

 for (i = 0;i < len + 1;i++)
 {
  ret[i] = (USHORT)str[i];
 }

 return ret;
}
