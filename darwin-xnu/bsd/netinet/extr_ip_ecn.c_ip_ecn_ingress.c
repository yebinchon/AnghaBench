
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;





 int IPTOS_ECN_MASK ;
 int panic (char*) ;

void
ip_ecn_ingress(int mode, u_int8_t *outer, const u_int8_t *inner)
{
 if (!outer || !inner)
  panic("NULL pointer passed to ip_ecn_ingress");

 *outer = *inner;
 switch (mode) {
 case 128:
  break;
 case 130:
  *outer &= ~IPTOS_ECN_MASK;
  break;
 case 129:
  break;
 }
}
