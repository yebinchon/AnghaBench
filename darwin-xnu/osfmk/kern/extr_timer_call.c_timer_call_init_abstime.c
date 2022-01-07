
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef void* uint32_t ;
struct TYPE_4__ {int * latency_tier_rate_limited; int * latency_qos_ns_max; int * latency_qos_scale; int timer_coalesce_ts_ns_max; int timer_coalesce_fp_ns_max; int timer_coalesce_kt_ns_max; int timer_coalesce_bg_ns_max; int timer_coalesce_rt_ns_max; int timer_coalesce_ts_shift; int timer_coalesce_fp_shift; int timer_coalesce_kt_shift; int timer_coalesce_bg_shift; int timer_coalesce_rt_shift; int timer_resort_threshold_ns; int interrupt_timer_coalescing_ilat_threshold_ns; int idle_entry_timer_processing_hdeadline_threshold_ns; } ;
typedef TYPE_1__ timer_coalescing_priority_params_ns_t ;
struct TYPE_5__ {int * latency_tier_rate_limited; scalar_t__* latency_qos_abstime_max; int * latency_qos_scale; scalar_t__ timer_coalesce_ts_abstime_max; scalar_t__ timer_coalesce_fp_abstime_max; scalar_t__ timer_coalesce_kt_abstime_max; scalar_t__ timer_coalesce_bg_abstime_max; scalar_t__ timer_coalesce_rt_abstime_max; int timer_coalesce_ts_shift; int timer_coalesce_fp_shift; int timer_coalesce_kt_shift; int timer_coalesce_bg_shift; int timer_coalesce_rt_shift; void* timer_resort_threshold_abstime; void* interrupt_timer_coalescing_ilat_threshold_abstime; void* idle_entry_timer_processing_hdeadline_threshold_abstime; } ;


 int NUM_LATENCY_QOS_TIERS ;
 int PAST_DEADLINE_TIMER_ADJUSTMENT_NS ;
 int nanoseconds_to_absolutetime (int ,scalar_t__*) ;
 scalar_t__ past_deadline_timer_adjustment ;
 TYPE_3__ tcoal_prio_params ;
 TYPE_1__* timer_call_get_priority_params () ;

__attribute__((used)) static void
timer_call_init_abstime(void)
{
 int i;
 uint64_t result;
 timer_coalescing_priority_params_ns_t * tcoal_prio_params_init = timer_call_get_priority_params();
 nanoseconds_to_absolutetime(PAST_DEADLINE_TIMER_ADJUSTMENT_NS, &past_deadline_timer_adjustment);
 nanoseconds_to_absolutetime(tcoal_prio_params_init->idle_entry_timer_processing_hdeadline_threshold_ns, &result);
 tcoal_prio_params.idle_entry_timer_processing_hdeadline_threshold_abstime = (uint32_t)result;
 nanoseconds_to_absolutetime(tcoal_prio_params_init->interrupt_timer_coalescing_ilat_threshold_ns, &result);
 tcoal_prio_params.interrupt_timer_coalescing_ilat_threshold_abstime = (uint32_t)result;
 nanoseconds_to_absolutetime(tcoal_prio_params_init->timer_resort_threshold_ns, &result);
 tcoal_prio_params.timer_resort_threshold_abstime = (uint32_t)result;
 tcoal_prio_params.timer_coalesce_rt_shift = tcoal_prio_params_init->timer_coalesce_rt_shift;
 tcoal_prio_params.timer_coalesce_bg_shift = tcoal_prio_params_init->timer_coalesce_bg_shift;
 tcoal_prio_params.timer_coalesce_kt_shift = tcoal_prio_params_init->timer_coalesce_kt_shift;
 tcoal_prio_params.timer_coalesce_fp_shift = tcoal_prio_params_init->timer_coalesce_fp_shift;
 tcoal_prio_params.timer_coalesce_ts_shift = tcoal_prio_params_init->timer_coalesce_ts_shift;

 nanoseconds_to_absolutetime(tcoal_prio_params_init->timer_coalesce_rt_ns_max,
     &tcoal_prio_params.timer_coalesce_rt_abstime_max);
 nanoseconds_to_absolutetime(tcoal_prio_params_init->timer_coalesce_bg_ns_max,
     &tcoal_prio_params.timer_coalesce_bg_abstime_max);
 nanoseconds_to_absolutetime(tcoal_prio_params_init->timer_coalesce_kt_ns_max,
     &tcoal_prio_params.timer_coalesce_kt_abstime_max);
 nanoseconds_to_absolutetime(tcoal_prio_params_init->timer_coalesce_fp_ns_max,
     &tcoal_prio_params.timer_coalesce_fp_abstime_max);
 nanoseconds_to_absolutetime(tcoal_prio_params_init->timer_coalesce_ts_ns_max,
     &tcoal_prio_params.timer_coalesce_ts_abstime_max);

 for (i = 0; i < NUM_LATENCY_QOS_TIERS; i++) {
  tcoal_prio_params.latency_qos_scale[i] = tcoal_prio_params_init->latency_qos_scale[i];
  nanoseconds_to_absolutetime(tcoal_prio_params_init->latency_qos_ns_max[i],
      &tcoal_prio_params.latency_qos_abstime_max[i]);
  tcoal_prio_params.latency_tier_rate_limited[i] = tcoal_prio_params_init->latency_tier_rate_limited[i];
 }
}
