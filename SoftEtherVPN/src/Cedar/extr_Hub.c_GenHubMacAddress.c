
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp2 ;
typedef int tmp1 ;
typedef int hash ;
typedef int UCHAR ;


 int BinToStr (char*,int,int*,int) ;
 int GenerateMachineUniqueHash (int*) ;
 int MAX_SIZE ;
 int SE_HUB_MAC_ADDR_SIGN ;
 int SHA1_SIZE ;
 int Sha0 (int*,char*,int ) ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;

void GenHubMacAddress(UCHAR *mac, char *name)
{
 char tmp1[MAX_SIZE];
 char tmp2[MAX_SIZE];
 UCHAR hash[SHA1_SIZE];

 if (mac == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 StrCpy(tmp1, sizeof(tmp1), name);
 Trim(tmp1);
 GenerateMachineUniqueHash(hash);
 BinToStr(tmp2, sizeof(tmp2), hash, sizeof(hash));
 StrCat(tmp2, sizeof(tmp2), tmp1);
 StrUpper(tmp2);

 Sha0(hash, tmp2, StrLen(tmp2));

 mac[0] = 0x00;
 mac[1] = SE_HUB_MAC_ADDR_SIGN;
 mac[2] = hash[0];
 mac[3] = hash[1];
 mac[4] = hash[2];
 mac[5] = hash[3];
}
