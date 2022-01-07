
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int CryptBlockSize; scalar_t__ IsIPsecIPv6; int * IkeServer; } ;
struct TYPE_5__ {int ClientIp; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef int L2TP_SESSION ;
typedef TYPE_2__ L2TP_SERVER ;


 scalar_t__ IsIP6 (int *) ;
 int MTU_FOR_PPPOE ;

UINT CalcL2TPMss(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, L2TP_SESSION *s)
{
 UINT ret;

 if (l2tp == ((void*)0) || t == ((void*)0) || s == ((void*)0))
 {
  return 0;
 }

 ret = MTU_FOR_PPPOE;

 if (l2tp->IkeServer != ((void*)0))
 {

  if (l2tp->IsIPsecIPv6)
  {
   ret -= 40;
  }
  else
  {
   ret -= 20;
  }


  ret -= 8;


  ret -= 20 + l2tp->CryptBlockSize * 2;
 }
 else
 {

  if (IsIP6(&t->ClientIp))
  {
   ret -= 40;
  }
  else
  {
   ret -= 20;
  }
 }


 ret -= 8;


 ret -= 8;


 ret -= 4;


 ret -= 20;


 ret -= 20;

 return ret;
}
