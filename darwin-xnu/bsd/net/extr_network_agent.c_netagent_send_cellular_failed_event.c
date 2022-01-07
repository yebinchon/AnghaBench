
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uuid_t ;
struct TYPE_3__ {int netagent_domain; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;
struct TYPE_4__ {int euuid; int epid; } ;
struct kev_netpolicy_ifdenied {TYPE_2__ ev_data; int ev_if_functional_type; } ;
typedef int pid_t ;
typedef int ev_ifdenied ;


 int IFRTYPE_FUNCTIONAL_CELLULAR ;
 int KEV_NETPOLICY_IFFAILED ;
 int NETAGENT_DOMAINSIZE ;
 int bzero (struct kev_netpolicy_ifdenied*,int) ;
 int netpolicy_post_msg (int ,TYPE_2__*,int) ;
 scalar_t__ strncmp (int ,char*,int ) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static void
netagent_send_cellular_failed_event(struct netagent_wrapper *wrapper,
         pid_t pid, uuid_t proc_uuid)
{
 if (strncmp(wrapper->netagent.netagent_domain, "Cellular", NETAGENT_DOMAINSIZE) != 0) {
  return;
 }

 struct kev_netpolicy_ifdenied ev_ifdenied;

 bzero(&ev_ifdenied, sizeof(ev_ifdenied));

 ev_ifdenied.ev_data.epid = pid;
 uuid_copy(ev_ifdenied.ev_data.euuid, proc_uuid);
 ev_ifdenied.ev_if_functional_type = IFRTYPE_FUNCTIONAL_CELLULAR;

 netpolicy_post_msg(KEV_NETPOLICY_IFFAILED, &ev_ifdenied.ev_data, sizeof(ev_ifdenied));
}
