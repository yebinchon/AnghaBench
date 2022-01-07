
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;



bool IsMacBroadcast(UCHAR *mac)
{
 UINT i;

 if (mac == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < 6;i++)
 {
  if (mac[i] != 0xff)
  {
   return 0;
  }
 }
 return 1;
}
