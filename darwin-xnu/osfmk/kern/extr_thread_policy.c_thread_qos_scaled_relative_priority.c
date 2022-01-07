
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* qos_pri; } ;
 int panic (char*,int) ;
 TYPE_1__ thread_qos_policy_params ;

__attribute__((used)) static int
thread_qos_scaled_relative_priority(int qos, int qos_relprio)
{
 int next_lower_qos;


 if (qos_relprio == 0) return 0;

 switch (qos) {
  case 129:
   next_lower_qos = 130;
   break;
  case 130:
   next_lower_qos = 132;
   break;
  case 132:
   next_lower_qos = 128;
   break;
  case 128:
   next_lower_qos = 133;
   break;
  case 131:
  case 133:
   next_lower_qos = 0;
   break;
  default:
   panic("Unrecognized QoS %d", qos);
   return 0;
 }

 int prio_range_max = thread_qos_policy_params.qos_pri[qos];
 int prio_range_min = next_lower_qos ? thread_qos_policy_params.qos_pri[next_lower_qos] : 0;
 int scaled_relprio = -(((prio_range_max - prio_range_min) * (-qos_relprio)) >> 4);

 return scaled_relprio;
}
