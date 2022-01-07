
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct knote {int kn_sfflags; } ;
typedef TYPE_1__* ipc_kmsg_t ;
struct TYPE_3__ {int ikm_qos_override; } ;


 int FILTER_ADJUST_EVENT_QOS (int) ;
 int MACH_RCV_MSG ;
 int _pthread_priority_thread_qos (int ) ;

__attribute__((used)) static int
filt_machport_adjust_qos(struct knote *kn, ipc_kmsg_t first)
{
 if (kn->kn_sfflags & MACH_RCV_MSG) {
  int qos = _pthread_priority_thread_qos(first->ikm_qos_override);
  return FILTER_ADJUST_EVENT_QOS(qos);
 }
 return 0;
}
