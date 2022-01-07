
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int CryptBlockSize; int ClientIP; scalar_t__ IsTunnelMode; } ;
typedef TYPE_1__ ETHERIP_SERVER ;


 scalar_t__ IsIP4 (int *) ;
 int MTU_FOR_PPPOE ;

UINT CalcEtherIPTcpMss(ETHERIP_SERVER *s)
{
 UINT ret = MTU_FOR_PPPOE;

 if (s == ((void*)0))
 {
  return 0;
 }


 if (IsIP4(&s->ClientIP))
 {
  ret -= 20;
 }
 else
 {
  ret -= 40;
 }


 ret -= 8;


 ret -= 20;
 ret -= s->CryptBlockSize * 2;


 if (s->IsTunnelMode)
 {
  if (IsIP4(&s->ClientIP))
  {
   ret -= 20;
  }
  else
  {
   ret -= 40;
  }
 }


 ret -= 2;


 ret -= 14;


 ret -= 20;


 ret -= 20;

 return ret;
}
