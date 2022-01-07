
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct kev_msg {int event_code; int kev_subclass; int kev_class; int vendor_code; } ;


 int KEV_FIREWALL_CLASS ;
 int KEV_IP6FW_SUBCLASS ;
 int KEV_VENDOR_APPLE ;
 int bzero (struct kev_msg*,int) ;
 int kev_post_msg (struct kev_msg*) ;

__attribute__((used)) static void
ip6fw_kev_post_msg(u_int32_t event_code)
{
 struct kev_msg ev_msg;

 bzero(&ev_msg, sizeof(struct kev_msg));

 ev_msg.vendor_code = KEV_VENDOR_APPLE;
 ev_msg.kev_class = KEV_FIREWALL_CLASS;
 ev_msg.kev_subclass = KEV_IP6FW_SUBCLASS;
 ev_msg.event_code = event_code;

 kev_post_msg(&ev_msg);

}
