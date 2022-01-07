
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ PAB_active; } ;
typedef TYPE_1__ cpu_data_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int do_print_all_backtraces (char const*) ;
 TYPE_1__* getCpuDatap () ;
 unsigned int not_in_kdp ;

__attribute__((used)) static void
print_all_backtraces(const char *message)
{
 unsigned int initial_not_in_kdp = not_in_kdp;

 cpu_data_t * cpu_data_ptr = getCpuDatap();

 assert(cpu_data_ptr->PAB_active == FALSE);
 cpu_data_ptr->PAB_active = TRUE;






 not_in_kdp = 0;
 do_print_all_backtraces(message);

 not_in_kdp = initial_not_in_kdp;

 cpu_data_ptr->PAB_active = FALSE;
}
