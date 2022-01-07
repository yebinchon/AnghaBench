
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mig_who_t ;
typedef int mig_which_event_t ;
typedef int mach_msg_id_t ;


 scalar_t__ mig_full_tracing ;
 int printf (char*,...) ;

void
MigEventTracer(
 mig_who_t who,
 mig_which_event_t what,
 mach_msg_id_t msgh_id,
 unsigned int size,
 unsigned int kpd,
 unsigned int retcode,
 unsigned int ports,
 unsigned int oolports,
 unsigned int ool,
 char *file,
 unsigned int line)
{
    printf("%d|%d|%d", who, what, msgh_id);
    if (mig_full_tracing)
 printf(" -- sz%d|kpd%d|ret(0x%x)|p%d|o%d|op%d|%s, %d",
     size, kpd, retcode, ports, oolports, ool, file, line);
    printf("\n");
}
