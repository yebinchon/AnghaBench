
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_ucred; } ;


 int bsd_do_post () ;
 int bsd_init_kprintf (char*) ;
 int bsd_list_tests () ;
 TYPE_1__* current_proc () ;
 int load_init_program (TYPE_1__*) ;
 int lock_trace ;
 int mac_cred_label_associate_user (int ) ;
 int panic (char*,int) ;
 int process_name (char*,TYPE_1__*) ;
 int ux_handler_setup () ;
 int vm_init_before_launchd () ;

void
bsdinit_task(void)
{
 proc_t p = current_proc();

 process_name("init", p);


 ux_handler_setup();





    vm_init_before_launchd();
 bsd_init_kprintf("bsd_do_post - done");

 load_init_program(p);
 lock_trace = 1;
}
