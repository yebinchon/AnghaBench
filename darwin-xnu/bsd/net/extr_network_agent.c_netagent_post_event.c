
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
typedef int u_int32_t ;
struct kev_netagent_data {int netagent_uuid; } ;
struct kev_msg {TYPE_1__* dv; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
typedef int event_data ;
typedef int ev_msg ;
struct TYPE_2__ {int data_length; struct kev_netagent_data* data_ptr; } ;


 int KEV_NETAGENT_SUBCLASS ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;
 int kev_post_msg (struct kev_msg*) ;
 int memset (struct kev_msg*,int ,int) ;
 int necp_update_all_clients () ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static void
netagent_post_event(uuid_t agent_uuid, u_int32_t event_code, bool update_necp)
{
 if (update_necp) {
  necp_update_all_clients();
 }

 struct kev_msg ev_msg;
 memset(&ev_msg, 0, sizeof(ev_msg));

 struct kev_netagent_data event_data;

 ev_msg.vendor_code = KEV_VENDOR_APPLE;
 ev_msg.kev_class = KEV_NETWORK_CLASS;
 ev_msg.kev_subclass = KEV_NETAGENT_SUBCLASS;
 ev_msg.event_code = event_code;

 uuid_copy(event_data.netagent_uuid, agent_uuid);
 ev_msg.dv[0].data_ptr = &event_data;
 ev_msg.dv[0].data_length = sizeof(event_data);

 kev_post_msg(&ev_msg);
}
