
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
typedef int mask ;
typedef int ip ;
struct TYPE_3__ {int Masked; int SubnetMask; int IpAddress; } ;
typedef TYPE_1__ AC ;


 char* CopyStr (char*) ;
 int Format (char*,int,char*,char*,...) ;
 int IPToStr (char*,int,int *) ;
 int MAX_SIZE ;
 int MaskToStr (char*,int,int *) ;

char *GenerateAcStr(AC *ac)
{
 char tmp[MAX_SIZE];
 char ip[64], mask[64];

 if (ac == ((void*)0))
 {
  return ((void*)0);
 }

 IPToStr(ip, sizeof(ip), &ac->IpAddress);
 MaskToStr(mask, sizeof(mask), &ac->SubnetMask);

 if (ac->Masked == 0)
 {
  Format(tmp, sizeof(tmp), "%s", ip);
 }
 else
 {
  Format(tmp, sizeof(tmp), "%s/%s", ip, mask);
 }

 return CopyStr(tmp);
}
