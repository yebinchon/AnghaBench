
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {char* p_name; int p_pid; } ;


 int OS_LOG_DEFAULT ;
 TYPE_1__* current_proc () ;
 int os_log_with_startup_serial (int ,char*,char*,int ,char*,char*,int const,char*) ;

void
memorystatus_log_exception(const int max_footprint_mb, boolean_t memlimit_is_active, boolean_t memlimit_is_fatal)
{
 proc_t p = current_proc();







 os_log_with_startup_serial(OS_LOG_DEFAULT, "EXC_RESOURCE -> %s[%d] exceeded mem limit: %s%s %d MB (%s)\n",
        (*p->p_name ? p->p_name : "unknown"), p->p_pid, (memlimit_is_active ? "Active" : "Inactive"),
        (memlimit_is_fatal ? "Hard" : "Soft"), max_footprint_mb,
        (memlimit_is_fatal ? "fatal" : "non-fatal"));

 return;
}
