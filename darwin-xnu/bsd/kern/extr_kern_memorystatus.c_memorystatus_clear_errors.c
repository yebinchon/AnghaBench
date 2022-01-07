
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_memstat_state; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_MEMSTAT_CLEAR_ERRORS ;
 int DBG_BSD_MEMSTAT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int ,int ) ;
 int P_MEMSTAT_ERROR ;
 int TRUE ;
 TYPE_1__* memorystatus_get_first_proc_locked (unsigned int*,int ) ;
 TYPE_1__* memorystatus_get_next_proc_locked (unsigned int*,TYPE_1__*,int ) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

__attribute__((used)) static void
memorystatus_clear_errors(void)
{
 proc_t p;
 unsigned int i = 0;

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_CLEAR_ERRORS) | DBG_FUNC_START, 0, 0, 0, 0, 0);

 proc_list_lock();

 p = memorystatus_get_first_proc_locked(&i, TRUE);
 while (p) {
  if (p->p_memstat_state & P_MEMSTAT_ERROR) {
   p->p_memstat_state &= ~P_MEMSTAT_ERROR;
  }
  p = memorystatus_get_next_proc_locked(&i, p, TRUE);
 }

 proc_list_unlock();

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_CLEAR_ERRORS) | DBG_FUNC_END, 0, 0, 0, 0, 0);
}
