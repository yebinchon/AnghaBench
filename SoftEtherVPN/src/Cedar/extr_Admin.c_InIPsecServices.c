
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int L2TP_DefaultHub; int IPsec_Secret; void* EtherIP_IPsec; void* L2TP_IPsec; void* L2TP_Raw; } ;
typedef int PACK ;
typedef TYPE_1__ IPSEC_SERVICES ;


 void* PackGetBool (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InIPsecServices(IPSEC_SERVICES *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(IPSEC_SERVICES));

 t->L2TP_Raw = PackGetBool(p, "L2TP_Raw");
 t->L2TP_IPsec = PackGetBool(p, "L2TP_IPsec");
 t->EtherIP_IPsec = PackGetBool(p, "EtherIP_IPsec");

 PackGetStr(p, "IPsec_Secret", t->IPsec_Secret, sizeof(t->IPsec_Secret));
 PackGetStr(p, "L2TP_DefaultHub", t->L2TP_DefaultHub, sizeof(t->L2TP_DefaultHub));
}
