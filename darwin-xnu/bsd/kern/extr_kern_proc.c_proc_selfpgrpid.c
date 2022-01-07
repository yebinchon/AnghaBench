
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_2__ {int p_pgrpid; } ;


 TYPE_1__* current_proc () ;

pid_t
proc_selfpgrpid()
{
 return current_proc()->p_pgrpid;
}
