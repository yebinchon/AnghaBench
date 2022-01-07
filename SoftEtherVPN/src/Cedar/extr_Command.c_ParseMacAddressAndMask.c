
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int Copy (int *,int *,int) ;
 int FreeToken (TYPE_1__*) ;
 int IsEmptyStr (char*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 int StrToMac (int *,char*) ;
 int Trim (char*) ;
 int Zero (int *,int) ;

bool ParseMacAddressAndMask(char *src, bool *check_mac, UCHAR *mac_bin, UCHAR *mask_bin)
{
 TOKEN_LIST *t;
 char *macstr, *maskstr;
 UCHAR mac[6], mask[6];
 bool ok = 0;


 if (src == ((void*)0))
 {
  return 0;
 }




 if(check_mac != ((void*)0) && mac_bin != ((void*)0) && mask_bin != ((void*)0))
 {
  ok = 1;
 }
 if(IsEmptyStr(src) != 0)
 {
  if(ok != 0)
  {
   *check_mac = 0;
   Zero(mac_bin, 6);
   Zero(mask_bin, 6);
  }
  return 1;
 }

 t = ParseToken(src, "/");
 if(t->NumTokens != 2)
 {
  FreeToken(t);
  return 0;
 }

 macstr = t->Token[0];
 maskstr = t->Token[1];

 Trim(macstr);
 Trim(maskstr);

 if(StrToMac(mac, macstr) == 0 || StrToMac(mask, maskstr) == 0)
 {
  FreeToken(t);
  return 0;
 }
 else
 {
  if(ok != 0)
  {
   Copy(mac_bin, mac, 6);
   Copy(mask_bin, mask, 6);
   *check_mac = 1;
  }
 }
 FreeToken(t);

 return 1;
}
