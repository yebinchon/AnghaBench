
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ is_reason_thrashing (int ) ;
 scalar_t__ is_reason_zone_map_exhaustion (int ) ;
 int kill_under_pressure_cause ;
 scalar_t__ memorystatus_available_pages ;
 scalar_t__ memorystatus_available_pages_pressure ;

__attribute__((used)) static boolean_t
memorystatus_action_needed(void)
{





 return (is_reason_thrashing(kill_under_pressure_cause) ||
   is_reason_zone_map_exhaustion(kill_under_pressure_cause));

}
