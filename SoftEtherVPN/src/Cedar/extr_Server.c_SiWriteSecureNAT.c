
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SecureNATOption; scalar_t__ EnableSecureNAT; } ;
typedef TYPE_1__ HUB ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,int) ;
 int NiWriteVhOptionEx (int ,int *) ;

void SiWriteSecureNAT(HUB *h, FOLDER *f)
{

 if (h == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 CfgAddBool(f, "Disabled", h->EnableSecureNAT ? 0 : 1);

 NiWriteVhOptionEx(h->SecureNATOption, f);
}
