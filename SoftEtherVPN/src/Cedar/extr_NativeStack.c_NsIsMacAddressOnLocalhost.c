
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UCHAR ;


 scalar_t__ Cmp (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ NS_MAC_ADDRESS_BYTE_1 ;
 int NsGenMacAddressSignatureForMachine (scalar_t__*,scalar_t__*) ;

bool NsIsMacAddressOnLocalhost(UCHAR *mac)
{
 UCHAR tmp[2];

 if (mac == ((void*)0))
 {
  return 0;
 }

 if (mac[0] != NS_MAC_ADDRESS_BYTE_1)
 {
  return 0;
 }

 NsGenMacAddressSignatureForMachine(tmp, mac);

 if (Cmp(mac + 4, tmp, 2) == 0)
 {
  return 1;
 }

 return 0;
}
