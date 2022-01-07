
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 scalar_t__ IsZero (int*,int) ;

bool IsValidUnicastMacAddress(UCHAR *mac)
{

 if (mac == ((void*)0))
 {
  return 0;
 }

 if (mac[0] & 0x01)
 {
  return 0;
 }

 if (IsZero(mac, 6))
 {
  return 0;
 }

 return 1;
}
