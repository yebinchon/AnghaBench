
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_rxtshift; scalar_t__ t_rtimo_probes; TYPE_2__* t_inpcb; int t_state; } ;
struct tcp_conn_status {int write_probe_failed; int conn_probe_failed; int read_probe_failed; int probe_activated; } ;
struct TYPE_4__ {TYPE_1__* inp_last_outifp; } ;
struct TYPE_3__ {int if_eflags; } ;


 int IFEF_PROBE_CONNECTIVITY ;
 scalar_t__ TCPS_HAVEESTABLISHED (int ) ;
 scalar_t__ TCP_CONNECTIVITY_PROBES_MAX ;
 int bzero (struct tcp_conn_status*,int) ;

void
tcp_get_connectivity_status(struct tcpcb *tp,
 struct tcp_conn_status *connstatus)
{
 if (tp == ((void*)0) || connstatus == ((void*)0))
  return;
 bzero(connstatus, sizeof(*connstatus));
 if (tp->t_rxtshift >= TCP_CONNECTIVITY_PROBES_MAX) {
  if (TCPS_HAVEESTABLISHED(tp->t_state)) {
   connstatus->write_probe_failed = 1;
  } else {
   connstatus->conn_probe_failed = 1;
  }
 }
 if (tp->t_rtimo_probes >= TCP_CONNECTIVITY_PROBES_MAX)
  connstatus->read_probe_failed = 1;
 if (tp->t_inpcb != ((void*)0) && tp->t_inpcb->inp_last_outifp != ((void*)0) &&
     (tp->t_inpcb->inp_last_outifp->if_eflags & IFEF_PROBE_CONNECTIVITY))
  connstatus->probe_activated = 1;
}
