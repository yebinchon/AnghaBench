
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uuid_t ;
struct necp_uuid_id_mapping {int uuid; } ;
struct TYPE_4__ {scalar_t__ necp_app_id; } ;
struct TYPE_3__ {TYPE_2__ necp_mtag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int FALSE ;
 int M_PKTHDR ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int necp_kernel_policy_lock ;
 struct necp_uuid_id_mapping* necp_uuid_lookup_uuid_with_app_id_locked (scalar_t__) ;
 int uuid_clear (int ) ;
 int uuid_copy (int ,int ) ;

int
necp_get_app_uuid_from_packet(struct mbuf *packet,
         uuid_t app_uuid)
{
 if (packet == ((void*)0) || !(packet->m_flags & M_PKTHDR)) {
  return (EINVAL);
 }

 bool found_mapping = FALSE;
 if (packet->m_pkthdr.necp_mtag.necp_app_id != 0) {
  lck_rw_lock_shared(&necp_kernel_policy_lock);
  struct necp_uuid_id_mapping *entry = necp_uuid_lookup_uuid_with_app_id_locked(packet->m_pkthdr.necp_mtag.necp_app_id);
  if (entry != ((void*)0)) {
   uuid_copy(app_uuid, entry->uuid);
   found_mapping = 1;
  }
  lck_rw_done(&necp_kernel_policy_lock);
 }
 if (!found_mapping) {
  uuid_clear(app_uuid);
 }
 return (0);
}
