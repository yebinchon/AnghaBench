
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int NSEC_PER_SEC ;
 scalar_t__ acpi_wake_postrebase_abstime ;
 int assert (int) ;
 scalar_t__ mach_absolute_time () ;

boolean_t
ml_recent_wake(void) {
 uint64_t ctime = mach_absolute_time();
 assert(ctime > acpi_wake_postrebase_abstime);
 return ((ctime - acpi_wake_postrebase_abstime) < 5 * NSEC_PER_SEC);
}
