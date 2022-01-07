
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct cfil_info {TYPE_1__* cfi_hash_entry; } ;
struct TYPE_2__ {scalar_t__ cfentry_lastused; } ;


 int LOG_ERR ;
 int cfil_info_log (int ,struct cfil_info*,char*) ;

bool
cfil_info_idle_timed_out(struct cfil_info *cfil_info, int timeout, u_int32_t current_time)
{
 if (cfil_info && cfil_info->cfi_hash_entry &&
  (current_time - cfil_info->cfi_hash_entry->cfentry_lastused >= (u_int32_t)timeout)) {



  return 1;
 }
 return 0;
}
