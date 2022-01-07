
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct netpolicy_event_data {int dummy; } ;
struct kev_msg {int event_code; TYPE_1__* dv; int kev_subclass; int kev_class; int vendor_code; } ;
typedef int ev_msg ;
struct TYPE_2__ {int data_length; struct netpolicy_event_data* data_ptr; } ;


 int KEV_NETPOLICY_SUBCLASS ;
 int KEV_NETWORK_CLASS ;
 int KEV_VENDOR_APPLE ;
 int VERIFY (int) ;
 int bzero (struct kev_msg*,int) ;
 int kev_post_msg (struct kev_msg*) ;

void
netpolicy_post_msg(uint32_t ev_code, struct netpolicy_event_data *ev_data,
    uint32_t ev_datalen)
{
 struct kev_msg ev_msg;






 VERIFY(ev_data != ((void*)0) && ev_datalen >= sizeof (*ev_data));

 bzero(&ev_msg, sizeof (ev_msg));
 ev_msg.vendor_code = KEV_VENDOR_APPLE;
 ev_msg.kev_class = KEV_NETWORK_CLASS;
 ev_msg.kev_subclass = KEV_NETPOLICY_SUBCLASS;
 ev_msg.event_code = ev_code;

 ev_msg.dv[0].data_ptr = ev_data;
 ev_msg.dv[0].data_length = ev_datalen;

 kev_post_msg(&ev_msg);
}
