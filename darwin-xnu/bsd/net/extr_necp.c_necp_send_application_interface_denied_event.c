
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
typedef int u_int32_t ;
struct TYPE_2__ {int euuid; int epid; } ;
struct kev_netpolicy_ifdenied {TYPE_1__ ev_data; int ev_if_functional_type; } ;
typedef int pid_t ;
typedef int ev_ifdenied ;


 int KEV_NETPOLICY_IFDENIED ;
 int bzero (struct kev_netpolicy_ifdenied*,int) ;
 int netpolicy_post_msg (int ,TYPE_1__*,int) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static void
necp_send_application_interface_denied_event(pid_t pid, uuid_t proc_uuid, u_int32_t if_functional_type)
{
 struct kev_netpolicy_ifdenied ev_ifdenied;

 bzero(&ev_ifdenied, sizeof(ev_ifdenied));

 ev_ifdenied.ev_data.epid = pid;
 uuid_copy(ev_ifdenied.ev_data.euuid, proc_uuid);
 ev_ifdenied.ev_if_functional_type = if_functional_type;

 netpolicy_post_msg(KEV_NETPOLICY_IFDENIED, &ev_ifdenied.ev_data, sizeof(ev_ifdenied));
}
