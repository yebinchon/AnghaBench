
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;



bool IsZero(void *data, UINT size)
{
 UINT i;
 UCHAR *c = (UCHAR *)data;

 if (data == ((void*)0) || size == 0)
 {
  return 1;
 }

 for (i = 0;i < size;i++)
 {
  if (c[i] != 0)
  {
   return 0;
  }
 }

 return 1;
}
