
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int FreeToken (TYPE_1__*) ;
 int IntToSubnetMask4 (int *,int) ;
 int IntToSubnetMask6 (int *,int) ;
 scalar_t__ IsIP4 (int *) ;
 scalar_t__ IsIP6 (int *) ;
 scalar_t__ IsNum (char*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ StrToIP (int *,char*) ;
 int ToInt (char*) ;
 int Trim (char*) ;
 int Zero (int *,int) ;

bool ParseIpAndMask46(char *src, IP *ip, IP *mask)
{
 TOKEN_LIST *t;
 char *ipstr;
 char *subnetstr;
 bool ret = 0;
 IP ip2;
 IP mask2;

 if (src == ((void*)0) || ip == ((void*)0) || mask == ((void*)0))
 {
  return 0;
 }

 Zero(&ip2, sizeof(IP));
 Zero(&mask2, sizeof(IP));

 t = ParseToken(src, "/");
 if (t->NumTokens != 2)
 {
  FreeToken(t);
  return 0;
 }

 ipstr = t->Token[0];
 subnetstr = t->Token[1];
 Trim(ipstr);
 Trim(subnetstr);

 if (StrToIP(&ip2, ipstr))
 {
  if (StrToIP(&mask2, subnetstr))
  {

   if (IsIP6(&ip2) && IsIP6(&mask2))
   {

    ret = 1;
    Copy(ip, &ip2, sizeof(IP));
    Copy(mask, &mask2, sizeof(IP));
   }
   else if (IsIP4(&ip2) && IsIP4(&mask2))
   {

    ret = 1;
    Copy(ip, &ip2, sizeof(IP));
    Copy(mask, &mask2, sizeof(IP));
   }
  }
  else
  {
   if (IsNum(subnetstr))
   {
    UINT i = ToInt(subnetstr);

    if (IsIP6(&ip2) && i <= 128)
    {
     ret = 1;
     Copy(ip, &ip2, sizeof(IP));
     IntToSubnetMask6(mask, i);
    }
    else if (i <= 32)
    {
     ret = 1;
     Copy(ip, &ip2, sizeof(IP));
     IntToSubnetMask4(mask, i);
    }
   }
  }
 }

 FreeToken(t);

 return ret;
}
