
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* task_t ;
typedef int proc_name ;
typedef int cbsd_info ;
struct TYPE_4__ {int task; } ;
struct TYPE_3__ {int bsd_info; } ;


 TYPE_2__* current_thread () ;
 int ml_nofault_copy (int ,int ,int) ;
 int paniclog_append_noflush (char*,char*) ;
 scalar_t__ proc_name_address (void*) ;

__attribute__((used)) static void
panic_display_process_name(void) {

 char proc_name[17] = "Unknown";
 task_t ctask = 0;
 void *cbsd_info = 0;

 if (ml_nofault_copy((vm_offset_t)&current_thread()->task, (vm_offset_t) &ctask, sizeof(task_t)) == sizeof(task_t))
  if(ml_nofault_copy((vm_offset_t)&ctask->bsd_info, (vm_offset_t)&cbsd_info, sizeof(cbsd_info)) == sizeof(cbsd_info))
   if (cbsd_info && (ml_nofault_copy((vm_offset_t) proc_name_address(cbsd_info), (vm_offset_t) &proc_name, sizeof(proc_name)) > 0))
    proc_name[sizeof(proc_name) - 1] = '\0';
 paniclog_append_noflush("\nBSD process name corresponding to current thread: %s\n", proc_name);
}
