
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int L2TP_DefaultHub; int IPsec_Secret; int EtherIP_IPsec; int L2TP_IPsec; int L2TP_Raw; } ;
typedef int PACK ;
typedef TYPE_1__ IPSEC_SERVICES ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutIPsecServices(PACK *p, IPSEC_SERVICES *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddBool(p, "L2TP_Raw", t->L2TP_Raw);
 PackAddBool(p, "L2TP_IPsec", t->L2TP_IPsec);
 PackAddBool(p, "EtherIP_IPsec", t->EtherIP_IPsec);

 PackAddStr(p, "IPsec_Secret", t->IPsec_Secret);
 PackAddStr(p, "L2TP_DefaultHub", t->L2TP_DefaultHub);
}
