
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct TYPE_7__ {scalar_t__ cfi_pending_last; scalar_t__ cfi_pass_offset; } ;
struct TYPE_5__ {scalar_t__ cfi_pending_last; scalar_t__ cfi_pass_offset; } ;
struct cfil_info {TYPE_3__ cfi_rcv; TYPE_1__ cfi_snd; struct cfil_entry* cfi_entries; } ;
struct TYPE_8__ {scalar_t__ cfe_pass_offset; } ;
struct TYPE_6__ {scalar_t__ cfe_pass_offset; } ;
struct cfil_entry {int cfe_last_action; TYPE_4__ cfe_rcv; TYPE_2__ cfe_snd; int * cfe_filter; } ;


 int LOG_ERR ;
 int MAX_CONTENT_FILTER ;
 int cfil_info_log (int ,struct cfil_info*,char*) ;
 int microuptime (struct timeval*) ;
 int timersub (struct timeval*,int *,struct timeval*) ;

bool
cfil_info_action_timed_out(struct cfil_info *cfil_info, int timeout)
{
 struct cfil_entry *entry;
 struct timeval current_tv;
 struct timeval diff_time;

 if (cfil_info == ((void*)0))
  return 0;






 if (cfil_info->cfi_snd.cfi_pending_last > cfil_info->cfi_snd.cfi_pass_offset ||
  cfil_info->cfi_rcv.cfi_pending_last > cfil_info->cfi_rcv.cfi_pass_offset) {

  microuptime(&current_tv);

  for (int kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
   entry = &cfil_info->cfi_entries[kcunit - 1];

   if (entry->cfe_filter == ((void*)0))
    continue;

   if (cfil_info->cfi_snd.cfi_pending_last > entry->cfe_snd.cfe_pass_offset ||
    cfil_info->cfi_rcv.cfi_pending_last > entry->cfe_rcv.cfe_pass_offset) {

    timersub(&current_tv, &entry->cfe_last_action, &diff_time);
    if (diff_time.tv_sec >= timeout) {



     return 1;
    }
   }
  }
 }
 return 0;
}
