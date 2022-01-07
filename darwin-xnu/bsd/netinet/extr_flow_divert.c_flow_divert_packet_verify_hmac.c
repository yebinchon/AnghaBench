
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct flow_divert_group {int lck; int * token_key; } ;
typedef int packet_hmac ;
typedef int mbuf_t ;


 int EINVAL ;
 int ENOPROTOOPT ;
 int FDLOG0 (int ,int *,char*) ;
 int FLOW_DIVERT_TLV_HMAC ;
 int LOG_WARNING ;
 int MBUF_WAITOK ;
 int SHA_DIGEST_LENGTH ;
 int flow_divert_packet_compute_hmac (int ,struct flow_divert_group*,int *) ;
 int flow_divert_packet_find_tlv (int ,int ,int ,int*,int ) ;
 int flow_divert_packet_get_tlv (int ,int,int ,int,int *,int *) ;
 scalar_t__ g_active_group_count ;
 int g_flow_divert_group_lck ;
 struct flow_divert_group** g_flow_divert_groups ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int mbuf_free (int ) ;
 int mbuf_split (int ,int,int ,int *) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int nil_pcb ;

__attribute__((used)) static int
flow_divert_packet_verify_hmac(mbuf_t packet, uint32_t ctl_unit)
{
 int error = 0;
 struct flow_divert_group *group = ((void*)0);
 int hmac_offset;
 uint8_t packet_hmac[SHA_DIGEST_LENGTH];
 uint8_t computed_hmac[SHA_DIGEST_LENGTH];
 mbuf_t tail;

 lck_rw_lock_shared(&g_flow_divert_group_lck);

 if (g_flow_divert_groups != ((void*)0) && g_active_group_count > 0) {
  group = g_flow_divert_groups[ctl_unit];
 }

 if (group == ((void*)0)) {
  lck_rw_done(&g_flow_divert_group_lck);
  return ENOPROTOOPT;
 }

 lck_rw_lock_shared(&group->lck);

 if (group->token_key == ((void*)0)) {
  error = ENOPROTOOPT;
  goto done;
 }

 hmac_offset = flow_divert_packet_find_tlv(packet, 0, FLOW_DIVERT_TLV_HMAC, &error, 0);
 if (hmac_offset < 0) {
  goto done;
 }

 error = flow_divert_packet_get_tlv(packet, hmac_offset, FLOW_DIVERT_TLV_HMAC, sizeof(packet_hmac), packet_hmac, ((void*)0));
 if (error) {
  goto done;
 }


 error = mbuf_split(packet, hmac_offset, MBUF_WAITOK, &tail);
 if (error) {
  goto done;
 }

 mbuf_free(tail);

 error = flow_divert_packet_compute_hmac(packet, group, computed_hmac);
 if (error) {
  goto done;
 }

 if (memcmp(packet_hmac, computed_hmac, sizeof(packet_hmac))) {
  FDLOG0(LOG_WARNING, &nil_pcb, "HMAC in token does not match computed HMAC");
  error = EINVAL;
  goto done;
 }

done:
 lck_rw_done(&group->lck);
 lck_rw_done(&g_flow_divert_group_lck);
 return error;
}
