
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ int32_t ;
typedef int boolean_t ;


 scalar_t__ JETSAM_PRIORITY_IDLE ;
 scalar_t__ is_reason_thrashing (int ) ;
 scalar_t__ is_reason_zone_map_exhaustion (int ) ;
 scalar_t__ memorystatus_idle_snapshot ;

__attribute__((used)) static boolean_t
memorystatus_post_snapshot(int32_t priority, uint32_t cause)
{
 boolean_t snapshot_eligible_kill_cause = (is_reason_thrashing(cause) || is_reason_zone_map_exhaustion(cause));
 return ((priority != JETSAM_PRIORITY_IDLE) || memorystatus_idle_snapshot || snapshot_eligible_kill_cause);

}
