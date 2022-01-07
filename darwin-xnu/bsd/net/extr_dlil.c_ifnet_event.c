
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kev_msg {TYPE_1__* dv; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
struct kern_event_msg {scalar_t__ total_size; int * event_data; int event_code; int kev_subclass; int kev_class; int vendor_code; } ;
typedef int kev_msg ;
typedef int * ifnet_t ;
typedef int errno_t ;
struct TYPE_2__ {scalar_t__ data_length; int * data_ptr; } ;


 int EINVAL ;
 scalar_t__ KEV_MSG_HEADER_SIZE ;
 int TRUE ;
 int bzero (struct kev_msg*,int) ;
 int dlil_event_internal (int *,struct kev_msg*,int ) ;

errno_t
ifnet_event(ifnet_t ifp, struct kern_event_msg *event)
{
 struct kev_msg kev_msg;
 int result = 0;

 if (ifp == ((void*)0) || event == ((void*)0))
  return (EINVAL);

 bzero(&kev_msg, sizeof (kev_msg));
 kev_msg.vendor_code = event->vendor_code;
 kev_msg.kev_class = event->kev_class;
 kev_msg.kev_subclass = event->kev_subclass;
 kev_msg.event_code = event->event_code;
 kev_msg.dv[0].data_ptr = &event->event_data[0];
 kev_msg.dv[0].data_length = event->total_size - KEV_MSG_HEADER_SIZE;
 kev_msg.dv[1].data_length = 0;

 result = dlil_event_internal(ifp, &kev_msg, TRUE);

 return (result);
}
