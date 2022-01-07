
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int32_t ;
struct kev_msg {TYPE_1__* dv; void* ctl_id; void* event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct ctl_event_data {TYPE_1__* dv; void* ctl_id; void* event_code; int kev_subclass; int kev_class; int vendor_code; } ;
typedef int ctl_ev_data ;
struct TYPE_2__ {int data_length; struct kev_msg* data_ptr; } ;


 int KEV_CTL_SUBCLASS ;
 int KEV_SYSTEM_CLASS ;
 int KEV_VENDOR_APPLE ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int bzero (struct kev_msg*,int) ;
 int ctl_mtx ;
 int kev_post_msg (struct kev_msg*) ;
 int lck_mtx_assert (int ,int ) ;

__attribute__((used)) static void
ctl_post_msg(u_int32_t event_code, u_int32_t id)
{
 struct ctl_event_data ctl_ev_data;
 struct kev_msg ev_msg;

 lck_mtx_assert(ctl_mtx, LCK_MTX_ASSERT_NOTOWNED);

 bzero(&ev_msg, sizeof(struct kev_msg));
 ev_msg.vendor_code = KEV_VENDOR_APPLE;

 ev_msg.kev_class = KEV_SYSTEM_CLASS;
 ev_msg.kev_subclass = KEV_CTL_SUBCLASS;
 ev_msg.event_code = event_code;


 bzero(&ctl_ev_data, sizeof(ctl_ev_data));
 ctl_ev_data.ctl_id = id;
 ev_msg.dv[0].data_ptr = &ctl_ev_data;
 ev_msg.dv[0].data_length = sizeof(ctl_ev_data);

 ev_msg.dv[1].data_length = 0;

 kev_post_msg(&ev_msg);
}
