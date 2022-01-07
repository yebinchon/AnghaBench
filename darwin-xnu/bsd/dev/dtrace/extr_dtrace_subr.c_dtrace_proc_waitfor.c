
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int p_name_length; int p_pid; struct TYPE_9__* p_name; } ;
typedef TYPE_1__ dtrace_procdesc_t ;
struct TYPE_10__ {TYPE_1__* pdesc; } ;
typedef TYPE_2__ dtrace_proc_awaited_entry_t ;


 int ASSERT (TYPE_1__*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 int PCATCH ;
 int dtrace_proc_awaited_head ;
 int dtrace_proc_exec_notification ;
 int * dtrace_proc_waitfor_exec_ptr ;
 int dtrace_procwaitfor_lock ;
 int entries ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (TYPE_2__*,int *,int ,char*,int *) ;
 int strnlen (TYPE_1__*,int) ;

int
dtrace_proc_waitfor(dtrace_procdesc_t* pdesc) {
 dtrace_proc_awaited_entry_t entry;
 int res;

 ASSERT(pdesc);
 ASSERT(pdesc->p_name);





 pdesc->p_name_length = strnlen(pdesc->p_name, sizeof(pdesc->p_name));
 if (pdesc->p_name_length >= (int) sizeof(pdesc->p_name))
  return -1;

 lck_mtx_lock(&dtrace_procwaitfor_lock);


 pdesc->p_pid = -1;
 entry.pdesc = pdesc;
 LIST_INSERT_HEAD(&dtrace_proc_awaited_head, &entry, entries);
 dtrace_proc_waitfor_exec_ptr = &dtrace_proc_exec_notification;


 res = msleep(&entry, &dtrace_procwaitfor_lock, PCATCH, "dtrace_proc_waitfor", ((void*)0));


 LIST_REMOVE(&entry, entries);
 if (LIST_EMPTY(&dtrace_proc_awaited_head))
  dtrace_proc_waitfor_exec_ptr = ((void*)0);

 lck_mtx_unlock(&dtrace_procwaitfor_lock);

 return res;
}
