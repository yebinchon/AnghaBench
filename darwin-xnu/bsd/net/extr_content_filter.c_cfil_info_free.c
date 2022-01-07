
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct content_filter {int cf_sock_count; int cf_sock_entries; } ;
struct TYPE_9__ {int cfe_ctl_q; int cfe_pending_q; } ;
struct TYPE_8__ {int cfe_ctl_q; int cfe_pending_q; } ;
struct TYPE_7__ {int cfi_inject_q; } ;
struct TYPE_6__ {int cfi_inject_q; } ;
struct cfil_info {TYPE_4__ cfe_rcv; TYPE_3__ cfe_snd; struct cfil_info* cfi_entries; TYPE_2__ cfi_rcv; TYPE_1__ cfi_snd; int * cfi_hash_entry; scalar_t__ cfe_necp_control_unit; struct content_filter* cfe_filter; } ;
struct cfil_entry {TYPE_4__ cfe_rcv; TYPE_3__ cfe_snd; struct cfil_entry* cfi_entries; TYPE_2__ cfi_rcv; TYPE_1__ cfi_snd; int * cfi_hash_entry; scalar_t__ cfe_necp_control_unit; struct content_filter* cfe_filter; } ;
struct TYPE_10__ {int cfs_flush_in_free; int cfs_flush_out_free; } ;


 int CFIL_LOG (int ,char*) ;
 int LOG_INFO ;
 int MAX_CONTENT_FILTER ;
 int OSIncrementAtomic (int *) ;
 int TAILQ_REMOVE (int *,struct cfil_info*,int ) ;
 int VERIFY (int) ;
 int cfe_link ;
 int cfi_link ;
 int cfil_info_zone ;
 int cfil_lck_rw ;
 scalar_t__ cfil_queue_drain (int *) ;
 int cfil_rw_lock_exclusive (int *) ;
 int cfil_rw_unlock_exclusive (int *) ;
 int cfil_sock_attached_count ;
 int cfil_sock_head ;
 int cfil_sock_udp_attached_count ;
 TYPE_5__ cfil_stats ;
 struct content_filter** content_filters ;
 int verify_content_filter (struct content_filter*) ;
 int zfree (int ,struct cfil_info*) ;

__attribute__((used)) static void
cfil_info_free(struct cfil_info *cfil_info)
{
 int kcunit;
 uint64_t in_drain = 0;
 uint64_t out_drained = 0;

 if (cfil_info == ((void*)0))
  return;

 CFIL_LOG(LOG_INFO, "");

 cfil_rw_lock_exclusive(&cfil_lck_rw);

 for (kcunit = 1;
  content_filters != ((void*)0) && kcunit <= MAX_CONTENT_FILTER;
  kcunit++) {
  struct cfil_entry *entry;
  struct content_filter *cfc;

  entry = &cfil_info->cfi_entries[kcunit - 1];


  if (entry->cfe_filter == ((void*)0))
   continue;

  cfc = content_filters[kcunit - 1];

  VERIFY(cfc == entry->cfe_filter);

  entry->cfe_filter = ((void*)0);
  entry->cfe_necp_control_unit = 0;
  TAILQ_REMOVE(&cfc->cf_sock_entries, entry, cfe_link);
  cfc->cf_sock_count--;

  verify_content_filter(cfc);
 }
 if (cfil_info->cfi_hash_entry != ((void*)0))
  cfil_sock_udp_attached_count--;
 cfil_sock_attached_count--;
 TAILQ_REMOVE(&cfil_sock_head, cfil_info, cfi_link);

 out_drained += cfil_queue_drain(&cfil_info->cfi_snd.cfi_inject_q);
 in_drain += cfil_queue_drain(&cfil_info->cfi_rcv.cfi_inject_q);

 for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
  struct cfil_entry *entry;

  entry = &cfil_info->cfi_entries[kcunit - 1];
  out_drained += cfil_queue_drain(&entry->cfe_snd.cfe_pending_q);
  in_drain += cfil_queue_drain(&entry->cfe_rcv.cfe_pending_q);
  out_drained += cfil_queue_drain(&entry->cfe_snd.cfe_ctl_q);
  in_drain += cfil_queue_drain(&entry->cfe_rcv.cfe_ctl_q);
 }
 cfil_rw_unlock_exclusive(&cfil_lck_rw);

 if (out_drained)
  OSIncrementAtomic(&cfil_stats.cfs_flush_out_free);
 if (in_drain)
  OSIncrementAtomic(&cfil_stats.cfs_flush_in_free);

 zfree(cfil_info_zone, cfil_info);
}
