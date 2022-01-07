
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp2 ;
typedef int tmp1 ;
typedef int hash ;
typedef int UCHAR ;
struct TYPE_4__ {int* addr; } ;
typedef TYPE_1__ IP ;


 int BinToStr (char*,int,int*,int) ;
 int GenerateMachineUniqueHash (int*) ;
 int MAX_SIZE ;
 int SHA1_SIZE ;
 int Sha0 (int*,char*,int ) ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;
 int Zero (TYPE_1__*,int) ;

void GenHubIpAddress(IP *ip, char *name)
{
 char tmp1[MAX_SIZE];
 char tmp2[MAX_SIZE];
 UCHAR hash[SHA1_SIZE];

 if (ip == ((void*)0) || name == ((void*)0))
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

 Zero(ip, sizeof(IP));
 ip->addr[0] = 172;
 ip->addr[1] = 31;
 ip->addr[2] = hash[0] % 254 + 1;
 ip->addr[3] = hash[1] % 254 + 1;
}
