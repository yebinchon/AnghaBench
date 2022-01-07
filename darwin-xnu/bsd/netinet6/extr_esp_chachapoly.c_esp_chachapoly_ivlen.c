
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {int flags; int * sched; } ;
struct esp_algorithm {int ivlenval; } ;
typedef TYPE_1__* esp_chachapoly_ctx_t ;
struct TYPE_2__ {scalar_t__ ccp_implicit_iv; } ;


 int ESP_CHECK_ARG (struct esp_algorithm const*) ;
 int SADB_X_EXT_IIV ;

int
esp_chachapoly_ivlen(const struct esp_algorithm *algo,
      struct secasvar *sav)
{
 ESP_CHECK_ARG(algo);

 if (sav != ((void*)0) &&
  ((sav->sched != ((void*)0) && ((esp_chachapoly_ctx_t)sav->sched)->ccp_implicit_iv) ||
   ((sav->flags & SADB_X_EXT_IIV) != 0))) {
  return 0;
 } else {
  return algo->ivlenval;
 }
}
