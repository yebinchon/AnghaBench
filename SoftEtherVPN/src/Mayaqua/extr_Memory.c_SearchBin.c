
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int UCHAR ;


 scalar_t__ Cmp (int *,void*,scalar_t__) ;
 scalar_t__ INFINITE ;

UINT SearchBin(void *data, UINT data_start, UINT data_size, void *key, UINT key_size)
{
 UINT i;

 if (data == ((void*)0) || key == ((void*)0) || key_size == 0 || data_size == 0 ||
  (data_start >= data_size) || (data_start + key_size > data_size))
 {
  return INFINITE;
 }

 for (i = data_start;i < (data_size - key_size + 1);i++)
 {
  UCHAR *p = ((UCHAR *)data) + i;

  if (Cmp(p, key, key_size) == 0)
  {
   return i;
  }
 }

 return INFINITE;
}
