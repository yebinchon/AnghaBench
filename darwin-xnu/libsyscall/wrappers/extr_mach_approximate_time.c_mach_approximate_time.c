
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;


 scalar_t__ _COMM_PAGE_APPROX_TIME ;
 scalar_t__ _COMM_PAGE_APPROX_TIME_SUPPORTED ;
 int mach_absolute_time () ;

uint64_t mach_approximate_time(void) {
 uint8_t supported = *((uint8_t *)_COMM_PAGE_APPROX_TIME_SUPPORTED);
        if (supported)
        {
            return *((uint64_t *)_COMM_PAGE_APPROX_TIME);
        }
 return mach_absolute_time();
}
