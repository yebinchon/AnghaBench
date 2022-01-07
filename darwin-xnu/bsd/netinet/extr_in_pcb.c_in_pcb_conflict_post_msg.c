
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct kev_msg {TYPE_1__* dv; int event_code; int kev_subclass; int kev_class; int vendor_code; int req_pid; int port; } ;
struct kev_in_portinuse {TYPE_1__* dv; int event_code; int kev_subclass; int kev_class; int vendor_code; int req_pid; int port; } ;
struct TYPE_2__ {int data_length; struct kev_msg* data_ptr; } ;


 int KEV_INET_PORTINUSE ;
 int KEV_INET_SUBCLASS ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;
 int bzero (struct kev_msg*,int) ;
 int dlil_post_complete_msg (int *,struct kev_msg*) ;
 int ntohs (int ) ;
 int proc_selfpid () ;

__attribute__((used)) static void
in_pcb_conflict_post_msg(u_int16_t port)
{





 struct kev_msg ev_msg;
 struct kev_in_portinuse in_portinuse;

 bzero(&in_portinuse, sizeof (struct kev_in_portinuse));
 bzero(&ev_msg, sizeof (struct kev_msg));
 in_portinuse.port = ntohs(port);
 in_portinuse.req_pid = proc_selfpid();
 ev_msg.vendor_code = KEV_VENDOR_APPLE;
 ev_msg.kev_class = KEV_NETWORK_CLASS;
 ev_msg.kev_subclass = KEV_INET_SUBCLASS;
 ev_msg.event_code = KEV_INET_PORTINUSE;
 ev_msg.dv[0].data_ptr = &in_portinuse;
 ev_msg.dv[0].data_length = sizeof (struct kev_in_portinuse);
 ev_msg.dv[1].data_length = 0;
 dlil_post_complete_msg(((void*)0), &ev_msg);
}
