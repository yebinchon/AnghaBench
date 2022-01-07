
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;



bool IsIpcMacAddress(UCHAR *mac)
{

 if (mac == ((void*)0))
 {
  return 0;
 }

 if (mac[0] == 0xCA)
 {
  return 1;
 }

 return 0;
}
