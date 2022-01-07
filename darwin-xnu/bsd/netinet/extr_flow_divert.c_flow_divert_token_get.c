
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sockopt {scalar_t__ sopt_val; int sopt_valsize; } ;
struct socket {int so_flags; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int app_data_length; size_t control_group_unit; int * app_data; int hash; TYPE_1__* group; } ;
struct flow_divert_group {int lck; int ctl_unit; } ;
typedef int * mbuf_t ;
typedef int hmac ;
typedef int errno_t ;
typedef int ctl_unit ;
struct TYPE_2__ {int ctl_unit; } ;


 int EINVAL ;
 int ENOPROTOOPT ;
 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int FLOW_DIVERT_TLV_APP_DATA ;
 int FLOW_DIVERT_TLV_CTL_UNIT ;
 int FLOW_DIVERT_TLV_FLOW_ID ;
 int FLOW_DIVERT_TLV_HMAC ;
 int FLOW_DIVERT_TLV_KEY_UNIT ;
 size_t GROUP_COUNT_MAX ;
 int LOG_ERR ;
 int MBUF_DONTWAIT ;
 int MBUF_TYPE_HEADER ;
 int SHA_DIGEST_LENGTH ;
 int SOF_FLOW_DIVERT ;
 scalar_t__ USER_ADDR_NULL ;
 int VERIFY (int) ;
 int flow_divert_packet_append_tlv (int *,int ,int,int *) ;
 int flow_divert_packet_compute_hmac (int *,struct flow_divert_group*,int *) ;
 scalar_t__ g_active_group_count ;
 int g_flow_divert_group_lck ;
 struct flow_divert_group** g_flow_divert_groups ;
 int htonl (int ) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int mbuf_freem (int *) ;
 int mbuf_gethdr (int ,int ,int **) ;
 int mbuf_pkthdr_len (int *) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soopt_mcopyout (struct sockopt*,int *) ;

errno_t
flow_divert_token_get(struct socket *so, struct sockopt *sopt)
{
 uint32_t ctl_unit;
 int error = 0;
 uint8_t hmac[SHA_DIGEST_LENGTH];
 struct flow_divert_pcb *fd_cb = so->so_fd_pcb;
 mbuf_t token = ((void*)0);
 struct flow_divert_group *control_group = ((void*)0);

 if (!(so->so_flags & SOF_FLOW_DIVERT)) {
  error = EINVAL;
  goto done;
 }

 VERIFY((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != ((void*)0));

 if (fd_cb->group == ((void*)0)) {
  error = EINVAL;
  goto done;
 }

 error = mbuf_gethdr(MBUF_DONTWAIT, MBUF_TYPE_HEADER, &token);
 if (error) {
  FDLOG(LOG_ERR, fd_cb, "failed to allocate the header mbuf: %d", error);
  goto done;
 }

 ctl_unit = htonl(fd_cb->group->ctl_unit);

 error = flow_divert_packet_append_tlv(token, FLOW_DIVERT_TLV_CTL_UNIT, sizeof(ctl_unit), &ctl_unit);
 if (error) {
  goto done;
 }

 error = flow_divert_packet_append_tlv(token, FLOW_DIVERT_TLV_FLOW_ID, sizeof(fd_cb->hash), &fd_cb->hash);
 if (error) {
  goto done;
 }

 if (fd_cb->app_data != ((void*)0)) {
  error = flow_divert_packet_append_tlv(token, FLOW_DIVERT_TLV_APP_DATA, fd_cb->app_data_length, fd_cb->app_data);
  if (error) {
   goto done;
  }
 }

 socket_unlock(so, 0);
 lck_rw_lock_shared(&g_flow_divert_group_lck);

 if (g_flow_divert_groups != ((void*)0) && g_active_group_count > 0 &&
     fd_cb->control_group_unit > 0 && fd_cb->control_group_unit < GROUP_COUNT_MAX)
 {
  control_group = g_flow_divert_groups[fd_cb->control_group_unit];
 }

 if (control_group != ((void*)0)) {
  lck_rw_lock_shared(&control_group->lck);
  ctl_unit = htonl(control_group->ctl_unit);
  error = flow_divert_packet_append_tlv(token, FLOW_DIVERT_TLV_KEY_UNIT, sizeof(ctl_unit), &ctl_unit);
  if (!error) {
   error = flow_divert_packet_compute_hmac(token, control_group, hmac);
  }
  lck_rw_done(&control_group->lck);
 } else {
  error = ENOPROTOOPT;
 }

 lck_rw_done(&g_flow_divert_group_lck);
 socket_lock(so, 0);

 if (error) {
  goto done;
 }

 error = flow_divert_packet_append_tlv(token, FLOW_DIVERT_TLV_HMAC, sizeof(hmac), hmac);
 if (error) {
  goto done;
 }

 if (sopt->sopt_val == USER_ADDR_NULL) {

  sopt->sopt_valsize = mbuf_pkthdr_len(token);
  goto done;
 }

 error = soopt_mcopyout(sopt, token);
 if (error) {
  token = ((void*)0);
  goto done;
 }

done:
 if (token != ((void*)0)) {
  mbuf_freem(token);
 }

 return error;
}
