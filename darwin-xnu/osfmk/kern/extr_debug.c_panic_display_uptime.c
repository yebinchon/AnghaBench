
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int absolutetime_to_nanoseconds (int ,int *) ;
 int mach_absolute_time () ;
 int paniclog_append_noflush (char*,int ) ;

__attribute__((used)) static void
panic_display_uptime(void) {
 uint64_t uptime;
 absolutetime_to_nanoseconds(mach_absolute_time(), &uptime);

 paniclog_append_noflush("\nSystem uptime in nanoseconds: %llu\n", uptime);
}
