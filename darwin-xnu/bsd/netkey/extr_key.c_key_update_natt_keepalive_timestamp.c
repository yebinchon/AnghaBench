
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {scalar_t__ natt_last_activity; TYPE_1__* sah; } ;
struct secasindex {int mode; int proto; int src; int dst; } ;
typedef int saidx_swap_sent_addr ;
struct TYPE_2__ {struct secasindex saidx; } ;


 int CMP_MODE ;
 int CMP_PORT ;
 int bzero (struct secasindex*,int) ;
 scalar_t__ key_cmpsaidx (struct secasindex*,struct secasindex*,int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ natt_now ;

__attribute__((used)) static void
key_update_natt_keepalive_timestamp (struct secasvar *sav_sent,
          struct secasvar *sav_update)
{
 struct secasindex saidx_swap_sent_addr;


 if (sav_sent == sav_update ||
     sav_update->natt_last_activity == natt_now) {
  return;
 }



 bzero(&saidx_swap_sent_addr, sizeof(saidx_swap_sent_addr));
 memcpy(&saidx_swap_sent_addr.src, &sav_sent->sah->saidx.dst, sizeof(saidx_swap_sent_addr.src));
 memcpy(&saidx_swap_sent_addr.dst, &sav_sent->sah->saidx.src, sizeof(saidx_swap_sent_addr.dst));
 saidx_swap_sent_addr.proto = sav_sent->sah->saidx.proto;
 saidx_swap_sent_addr.mode = sav_sent->sah->saidx.mode;


 if (key_cmpsaidx(&sav_sent->sah->saidx, &sav_update->sah->saidx, CMP_MODE | CMP_PORT) ||
     key_cmpsaidx(&saidx_swap_sent_addr, &sav_update->sah->saidx, CMP_MODE | CMP_PORT)) {
  sav_update->natt_last_activity = natt_now;
 }
}
