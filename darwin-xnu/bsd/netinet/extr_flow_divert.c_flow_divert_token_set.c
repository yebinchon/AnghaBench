
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcpcb {scalar_t__ t_state; } ;
struct sockopt {int dummy; } ;
struct socket {int so_flags; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int log_level; int flags; int * connect_token; } ;
typedef int * mbuf_t ;
typedef int log_level ;
typedef int key_unit ;
typedef int flow_id ;
typedef int errno_t ;
typedef int ctl_unit ;


 int EALREADY ;
 int EINVAL ;
 int ENOENT ;
 int ENOPROTOOPT ;
 int FDLOG (int ,int *,char*,int) ;
 int FLOW_DIVERT_HAS_HMAC ;
 int FLOW_DIVERT_TLV_CTL_UNIT ;
 int FLOW_DIVERT_TLV_FLOW_ID ;
 int FLOW_DIVERT_TLV_KEY_UNIT ;
 int FLOW_DIVERT_TLV_LOG_LEVEL ;
 scalar_t__ GROUP_COUNT_MAX ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_DOM (struct socket*) ;
 scalar_t__ SOCK_PROTO (struct socket*) ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOCK_TYPE (struct socket*) ;
 int SOF_FLOW_DIVERT ;
 scalar_t__ TCPS_CLOSED ;
 int flow_divert_attach (struct socket*,scalar_t__,scalar_t__) ;
 int flow_divert_packet_get_tlv (int *,int ,int ,int,int*,int *) ;
 int flow_divert_packet_verify_hmac (int *,scalar_t__) ;
 int flow_divert_pcb_init (struct socket*,scalar_t__) ;
 int g_init_result ;
 int mbuf_freem (int *) ;
 int nil_pcb ;
 scalar_t__ ntohl (scalar_t__) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soopt_getm (struct sockopt*,int **) ;
 int soopt_mcopyin (struct sockopt*,int *) ;
 struct tcpcb* sototcpcb (struct socket*) ;

errno_t
flow_divert_token_set(struct socket *so, struct sockopt *sopt)
{
 uint32_t ctl_unit = 0;
 uint32_t key_unit = 0;
 uint32_t flow_id = 0;
 int error = 0;
 int hmac_error = 0;
 mbuf_t token = ((void*)0);

 if (so->so_flags & SOF_FLOW_DIVERT) {
  error = EALREADY;
  goto done;
 }

 if (g_init_result) {
  FDLOG(LOG_ERR, &nil_pcb, "flow_divert_init failed (%d), cannot use flow divert", g_init_result);
  error = ENOPROTOOPT;
  goto done;
 }

 if ((SOCK_TYPE(so) != SOCK_STREAM && SOCK_TYPE(so) != SOCK_DGRAM) ||
     (SOCK_PROTO(so) != IPPROTO_TCP && SOCK_PROTO(so) != IPPROTO_UDP) ||
     (SOCK_DOM(so) != PF_INET



  ))
 {
  error = EINVAL;
  goto done;
 } else {
  if (SOCK_TYPE(so) == SOCK_STREAM && SOCK_PROTO(so) == IPPROTO_TCP) {
   struct tcpcb *tp = sototcpcb(so);
   if (tp == ((void*)0) || tp->t_state != TCPS_CLOSED) {
    error = EINVAL;
    goto done;
   }
  }
 }

 error = soopt_getm(sopt, &token);
 if (error) {
  token = ((void*)0);
  goto done;
 }

 error = soopt_mcopyin(sopt, token);
 if (error) {
  token = ((void*)0);
  goto done;
 }

 error = flow_divert_packet_get_tlv(token, 0, FLOW_DIVERT_TLV_KEY_UNIT, sizeof(key_unit), (void *)&key_unit, ((void*)0));
 if (!error) {
  key_unit = ntohl(key_unit);
  if (key_unit >= GROUP_COUNT_MAX) {
   key_unit = 0;
  }
 } else if (error != ENOENT) {
  FDLOG(LOG_ERR, &nil_pcb, "Failed to get the key unit from the token: %d", error);
  goto done;
 } else {
  key_unit = 0;
 }

 error = flow_divert_packet_get_tlv(token, 0, FLOW_DIVERT_TLV_CTL_UNIT, sizeof(ctl_unit), (void *)&ctl_unit, ((void*)0));
 if (error) {
  FDLOG(LOG_ERR, &nil_pcb, "Failed to get the control socket unit from the token: %d", error);
  goto done;
 }


 ctl_unit = ntohl(ctl_unit);
 if (ctl_unit == 0 || ctl_unit >= GROUP_COUNT_MAX) {
  FDLOG(LOG_ERR, &nil_pcb, "Got an invalid control socket unit: %u", ctl_unit);
  error = EINVAL;
  goto done;
 }

 socket_unlock(so, 0);
 hmac_error = flow_divert_packet_verify_hmac(token, (key_unit != 0 ? key_unit : ctl_unit));
 socket_lock(so, 0);

 if (hmac_error && hmac_error != ENOENT) {
  FDLOG(LOG_ERR, &nil_pcb, "HMAC verfication failed: %d", hmac_error);
  error = hmac_error;
  goto done;
 }

 error = flow_divert_packet_get_tlv(token, 0, FLOW_DIVERT_TLV_FLOW_ID, sizeof(flow_id), (void *)&flow_id, ((void*)0));
 if (error && error != ENOENT) {
  FDLOG(LOG_ERR, &nil_pcb, "Failed to get the flow ID from the token: %d", error);
  goto done;
 }

 if (flow_id == 0) {
  error = flow_divert_pcb_init(so, ctl_unit);
  if (error == 0) {
   struct flow_divert_pcb *fd_cb = so->so_fd_pcb;
   int log_level = LOG_NOTICE;

   error = flow_divert_packet_get_tlv(token, 0, FLOW_DIVERT_TLV_LOG_LEVEL,
                                   sizeof(log_level), &log_level, ((void*)0));
   if (error == 0) {
    fd_cb->log_level = log_level;
   }
   error = 0;

   fd_cb->connect_token = token;
   token = ((void*)0);
  }
 } else {
  error = flow_divert_attach(so, flow_id, ctl_unit);
 }

 if (hmac_error == 0) {
  struct flow_divert_pcb *fd_cb = so->so_fd_pcb;
  if (fd_cb != ((void*)0)) {
   fd_cb->flags |= FLOW_DIVERT_HAS_HMAC;
  }
 }

done:
 if (token != ((void*)0)) {
  mbuf_freem(token);
 }

 return error;
}
