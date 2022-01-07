
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct socket {int so_flags; int last_uuid; int last_pid; int e_uuid; int e_pid; } ;
struct kev_netevent_apnfallbk_data {TYPE_1__* dv; int euuid; int epid; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct kev_msg {TYPE_1__* dv; int euuid; int epid; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
typedef int proc_t ;
typedef int pid_t ;
typedef int application_uuid ;
typedef int apnfallbk_data ;
struct TYPE_2__ {int data_length; struct kev_netevent_apnfallbk_data* data_ptr; } ;


 int KEV_NETEVENT_APNFALLBACK ;
 int KEV_NETEVENT_SUBCLASS ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;
 int LOG_INFO ;
 int SOF_DELEGATED ;
 int apn_fallbk_log (int ) ;
 int bzero (struct kev_netevent_apnfallbk_data*,int) ;
 int kev_post_msg (struct kev_netevent_apnfallbk_data*) ;
 int last_apn_fallback ;
 int net_uptime () ;
 int proc_getexecutableuuid (int ,int ,int) ;
 int proc_pid (int ) ;
 int uuid_clear (int ) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static void
apn_fallback_trigger(proc_t proc, struct socket *so)
{
 pid_t pid = 0;
 struct kev_msg ev_msg;
 struct kev_netevent_apnfallbk_data apnfallbk_data;

 last_apn_fallback = net_uptime();
 pid = proc_pid(proc);
 uuid_t application_uuid;
 uuid_clear(application_uuid);
 proc_getexecutableuuid(proc, application_uuid,
     sizeof(application_uuid));

 bzero(&ev_msg, sizeof (struct kev_msg));
 ev_msg.vendor_code = KEV_VENDOR_APPLE;
 ev_msg.kev_class = KEV_NETWORK_CLASS;
 ev_msg.kev_subclass = KEV_NETEVENT_SUBCLASS;
 ev_msg.event_code = KEV_NETEVENT_APNFALLBACK;

 bzero(&apnfallbk_data, sizeof(apnfallbk_data));

 if (so->so_flags & SOF_DELEGATED) {
  apnfallbk_data.epid = so->e_pid;
  uuid_copy(apnfallbk_data.euuid, so->e_uuid);
 } else {
  apnfallbk_data.epid = so->last_pid;
  uuid_copy(apnfallbk_data.euuid, so->last_uuid);
 }

 ev_msg.dv[0].data_ptr = &apnfallbk_data;
 ev_msg.dv[0].data_length = sizeof(apnfallbk_data);
 kev_post_msg(&ev_msg);
 apn_fallbk_log((LOG_INFO, "APN fallback notification issued.\n"));
}
