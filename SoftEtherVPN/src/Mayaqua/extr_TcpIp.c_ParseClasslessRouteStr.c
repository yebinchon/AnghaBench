
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tmp ;
typedef int ip_and_mask ;
typedef int gateway ;
struct TYPE_8__ {int Exists; int SubnetMask; int Network; int Gateway; int SubnetMaskLen; } ;
struct TYPE_7__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ DHCP_CLASSLESS_ROUTE ;


 int Format (char*,int,char*,char*,char*) ;
 int FreeToken (TYPE_1__*) ;
 int IPAnd4 (int *,int *,int *) ;
 scalar_t__ IsIP4 (int *) ;
 int MAX_PATH ;
 scalar_t__ ParseIpAndSubnetMask46 (char*,int *,int *) ;
 TYPE_1__* ParseTokenWithoutNullStr (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ StrToIP (int *,char*) ;
 int SubnetMaskToInt4 (int *) ;
 int Trim (char*) ;
 int Zero (TYPE_2__*,int) ;

bool ParseClasslessRouteStr(DHCP_CLASSLESS_ROUTE *r, char *str)
{
 TOKEN_LIST *t;
 bool ret = 0;
 char tmp[MAX_PATH];

 if (r == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 StrCpy(tmp, sizeof(tmp), str);
 Trim(tmp);

 t = ParseTokenWithoutNullStr(str, "/");
 if (t == ((void*)0))
 {
  return 0;
 }

 if (t->NumTokens == 3)
 {
  char ip_and_mask[MAX_PATH];
  char gateway[MAX_PATH];

  Zero(r, sizeof(DHCP_CLASSLESS_ROUTE));

  Format(ip_and_mask, sizeof(ip_and_mask), "%s/%s", t->Token[0], t->Token[1]);
  StrCpy(gateway, sizeof(gateway), t->Token[2]);

  if (ParseIpAndSubnetMask46(ip_and_mask, &r->Network, &r->SubnetMask))
  {
   r->SubnetMaskLen = SubnetMaskToInt4(&r->SubnetMask);

   if (StrToIP(&r->Gateway, gateway))
   {
    if (IsIP4(&r->Gateway) && IsIP4(&r->Network) && IsIP4(&r->SubnetMask))
    {
     r->Exists = 1;

     IPAnd4(&r->Network, &r->Network, &r->SubnetMask);

     ret = 1;
    }
   }
  }
 }

 FreeToken(t);

 return ret;
}
