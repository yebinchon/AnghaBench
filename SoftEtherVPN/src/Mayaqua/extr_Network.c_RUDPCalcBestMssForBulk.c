
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT ;
struct TYPE_6__ {int YourIp; } ;
struct TYPE_5__ {scalar_t__ Protocol; } ;
typedef TYPE_1__ RUDP_STACK ;
typedef TYPE_2__ RUDP_SESSION ;


 int IsIP6 (int *) ;
 int MTU_FOR_PPPOE ;
 scalar_t__ RUDP_PROTOCOL_DNS ;
 scalar_t__ RUDP_PROTOCOL_ICMP ;
 scalar_t__ SHA1_SIZE ;

UINT RUDPCalcBestMssForBulk(RUDP_STACK *r, RUDP_SESSION *se)
{
 UINT ret;

 if (r == ((void*)0) || se == ((void*)0))
 {
  return 0;
 }

 ret = MTU_FOR_PPPOE;


 if (IsIP6(&se->YourIp) == 0)
 {
  ret -= 20;
 }
 else
 {
  ret -= 40;
 }

 if (r->Protocol == RUDP_PROTOCOL_ICMP)
 {

  ret -= 8;

  ret -= SHA1_SIZE;
 }
 else if (r->Protocol == RUDP_PROTOCOL_DNS)
 {

  ret -= 8;


  ret -= 42;
 }


 ret -= SHA1_SIZE;


 ret -= SHA1_SIZE;


 ret -= sizeof(UINT64);


 ret -= 31;


 ret -= 14;


 ret -= 20;


 ret -= 20;


 ret -= 24;

 return ret;
}
