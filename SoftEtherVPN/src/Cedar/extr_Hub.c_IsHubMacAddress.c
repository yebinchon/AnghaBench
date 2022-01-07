
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int SE_HUB_MAC_ADDR_SIGN ;

bool IsHubMacAddress(UCHAR *mac)
{

 if (mac == ((void*)0))
 {
  return 0;
 }

 if (mac[0] == 0x00 && mac[1] == SE_HUB_MAC_ADDR_SIGN)
 {
  return 1;
 }

 return 0;
}
