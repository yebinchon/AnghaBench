
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct secasvar {TYPE_2__* sah; } ;
struct TYPE_3__ {scalar_t__ proto; } ;
struct TYPE_4__ {TYPE_1__ saidx; } ;


 scalar_t__ IPPROTO_AH ;
 int LOG_ERR ;
 int ipseclog (int ) ;

__attribute__((used)) static int
ah_none_mature(struct secasvar *sav)
{
 if (sav->sah->saidx.proto == IPPROTO_AH) {
  ipseclog((LOG_ERR,
      "ah_none_mature: protocol and algorithm mismatch.\n"));
  return 1;
 }
 return 0;
}
