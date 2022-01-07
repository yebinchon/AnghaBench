
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct kev_msg {TYPE_1__* dv; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct kev_mptcp_data {int value; } ;
typedef int event_data ;
typedef int ev_msg ;
struct TYPE_2__ {int data_length; struct kev_mptcp_data* data_ptr; } ;


 int KEV_MPTCP_SUBCLASS ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;
 int kev_post_msg (struct kev_msg*) ;
 int memset (struct kev_msg*,int ,int) ;

__attribute__((used)) static int
mptcp_post_event(u_int32_t event_code, int value)
{
 struct kev_mptcp_data event_data;
 struct kev_msg ev_msg;

 memset(&ev_msg, 0, sizeof(ev_msg));

 ev_msg.vendor_code = KEV_VENDOR_APPLE;
 ev_msg.kev_class = KEV_NETWORK_CLASS;
 ev_msg.kev_subclass = KEV_MPTCP_SUBCLASS;
 ev_msg.event_code = event_code;

 event_data.value = value;

 ev_msg.dv[0].data_ptr = &event_data;
 ev_msg.dv[0].data_length = sizeof(event_data);

 return kev_post_msg(&ev_msg);
}
