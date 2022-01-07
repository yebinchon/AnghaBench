
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int boolean_t ;


 scalar_t__ _COMM_PAGE32_BASE_ADDRESS ;
 scalar_t__ _COMM_PAGE32_START_ADDRESS ;
 scalar_t__ _COMM_PAGE_APPROX_TIME_SUPPORTED ;
 char* commPagePtr32 ;
 char* commPagePtr64 ;
 int commpage_update_mach_approximate_time (int ) ;

__attribute__((used)) static void
commpage_mach_approximate_time_init(void)
{
 char *cp = commPagePtr32;
 uint8_t supported;




 supported = 0;

 if ( cp ) {
  cp += (_COMM_PAGE_APPROX_TIME_SUPPORTED - _COMM_PAGE32_BASE_ADDRESS);
  *(boolean_t *)cp = supported;
 }

 cp = commPagePtr64;
 if ( cp ) {
  cp += (_COMM_PAGE_APPROX_TIME_SUPPORTED - _COMM_PAGE32_START_ADDRESS);
  *(boolean_t *)cp = supported;
 }
 commpage_update_mach_approximate_time(0);
}
