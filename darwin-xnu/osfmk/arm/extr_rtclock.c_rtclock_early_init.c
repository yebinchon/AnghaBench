
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int tmp_mv ;


 int KF_MATV_OVRD ;
 scalar_t__ PE_parse_boot_argn (char*,scalar_t__*,int) ;
 int PE_register_timebase_callback (int ) ;
 scalar_t__ absolute_time_validation ;
 scalar_t__ kern_feature_override (int ) ;
 int timebase_callback ;

void
rtclock_early_init(void)
{
 PE_register_timebase_callback(timebase_callback);
}
