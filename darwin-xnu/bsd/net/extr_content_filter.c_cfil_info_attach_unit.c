
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct socket {int dummy; } ;
struct content_filter {scalar_t__ cf_necp_control_unit; int cf_sock_count; int cf_sock_entries; } ;
struct cfil_info {struct cfil_entry* cfi_entries; } ;
struct cfil_entry {int cfe_flags; scalar_t__ cfe_necp_control_unit; struct content_filter* cfe_filter; } ;


 int CFEF_CFIL_ATTACHED ;
 int CFIL_LOG (int ,char*) ;
 int LOG_INFO ;
 int MAX_CONTENT_FILTER ;
 int TAILQ_INSERT_TAIL (int *,struct cfil_entry*,int ) ;
 int cfe_link ;
 int cfil_lck_rw ;
 int cfil_rw_lock_exclusive (int *) ;
 int cfil_rw_unlock_exclusive (int *) ;
 struct content_filter** content_filters ;
 int socket_lock_assert_owned (struct socket*) ;
 int verify_content_filter (struct content_filter*) ;

int
cfil_info_attach_unit(struct socket *so, uint32_t filter_control_unit, struct cfil_info *cfil_info)
{
 int kcunit;
 int attached = 0;

 CFIL_LOG(LOG_INFO, "");

 socket_lock_assert_owned(so);

 cfil_rw_lock_exclusive(&cfil_lck_rw);

 for (kcunit = 1;
  content_filters != ((void*)0) && kcunit <= MAX_CONTENT_FILTER;
  kcunit++) {
  struct content_filter *cfc = content_filters[kcunit - 1];
  struct cfil_entry *entry;

  if (cfc == ((void*)0))
   continue;
  if (cfc->cf_necp_control_unit != filter_control_unit)
   continue;

  entry = &cfil_info->cfi_entries[kcunit - 1];

  entry->cfe_filter = cfc;
  entry->cfe_necp_control_unit = filter_control_unit;
  TAILQ_INSERT_TAIL(&cfc->cf_sock_entries, entry, cfe_link);
  cfc->cf_sock_count++;
  verify_content_filter(cfc);
  attached = 1;
  entry->cfe_flags |= CFEF_CFIL_ATTACHED;
  break;
 }

 cfil_rw_unlock_exclusive(&cfil_lck_rw);

 return (attached);
}
