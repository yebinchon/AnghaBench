
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VH_OPTION ;
struct TYPE_4__ {int SecureNATOption; } ;
typedef TYPE_1__ HUB ;
typedef int FOLDER ;


 scalar_t__ CfgGetBool (int *,char*) ;
 int Copy (int ,int *,int) ;
 int EnableSecureNAT (TYPE_1__*,int) ;
 int NiLoadVhOptionEx (int *,int *) ;

void SiLoadSecureNAT(HUB *h, FOLDER *f)
{
 VH_OPTION o;

 if (h == ((void*)0) || f == ((void*)0))
 {
  return;
 }


 NiLoadVhOptionEx(&o, f);


 Copy(h->SecureNATOption, &o, sizeof(VH_OPTION));

 EnableSecureNAT(h, CfgGetBool(f, "Disabled") ? 0 : 1);
}
