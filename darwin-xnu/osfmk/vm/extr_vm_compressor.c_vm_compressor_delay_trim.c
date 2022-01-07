
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;


 scalar_t__ DELAY_TRIM_ON_WAKE_SECS ;
 int clock_get_system_nanotime (scalar_t__*,int *) ;
 scalar_t__ dont_trim_until_ts ;

void
vm_compressor_delay_trim(void)
{
        clock_sec_t sec;
 clock_nsec_t nsec;

 clock_get_system_nanotime(&sec, &nsec);
 dont_trim_until_ts = sec + DELAY_TRIM_ON_WAKE_SECS;
}
