
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UCHAR ;


 int Copy (void*,int *,int) ;
 int MAX_SIZE ;
 int NS_MAC_ADDRESS_BYTE_1 ;
 int NsGenMacAddressSignatureForMachine (int *,int *) ;
 int SHA1_SIZE ;
 int Sha1 (int *,char*,int ) ;
 int StrCat (char*,int,char*) ;
 int StrLen (char*) ;
 int StrLower (char*) ;
 int Trim (char*) ;
 int Zero (char*,int) ;

void NsGenMacAddress(void *dest, char *mac_address_seed, char *device_name)
{
 char tmp[MAX_SIZE];
 UCHAR mac[6];
 UCHAR hash[SHA1_SIZE];

 Zero(tmp, sizeof(tmp));

 StrCat(tmp, sizeof(tmp), mac_address_seed);
 StrCat(tmp, sizeof(tmp), "@");
 StrCat(tmp, sizeof(tmp), device_name);

 Trim(tmp);

 StrLower(tmp);

 Sha1(hash, tmp, StrLen(tmp));

 mac[0] = NS_MAC_ADDRESS_BYTE_1;
 mac[1] = hash[1];
 mac[2] = hash[2];
 mac[3] = hash[3];
 mac[4] = hash[4];
 mac[5] = hash[5];

 NsGenMacAddressSignatureForMachine(mac + 4, mac);

 Copy(dest, mac, 6);
}
