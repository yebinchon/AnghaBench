
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
struct no_paging_space {int npcs_proc_count; int npcs_max_size; int pcs_proc_count; int pcs_max_size; int apcs_proc_count; scalar_t__ npcs_uniqueid; scalar_t__ pcs_uniqueid; int pcs_pid; int npcs_pid; int apcs_total_size; int pcs_total_size; int npcs_total_size; } ;
typedef TYPE_1__* proc_t ;
typedef int nps ;
struct TYPE_7__ {scalar_t__ p_uniqueid; int p_pid; char* p_comm; } ;


 int MB_SIZE ;
 int PROC_ALLPROCLIST ;
 TYPE_1__* PROC_NULL ;
 int SIGKILL ;
 int TRUE ;
 int bzero (struct no_paging_space*,int) ;
 struct timeval last_no_space_action ;
 int max_kill_priority ;
 scalar_t__ memorystatus_get_proccnt_upto_priority (int ) ;
 int memorystatus_kill_on_VM_compressor_space_shortage (int ) ;
 int microtime (struct timeval*) ;
 int printf (char*,...) ;
 int proc_dopcontrol (TYPE_1__*) ;
 TYPE_1__* proc_find (int ) ;
 int proc_iterate (int ,int ,void*,int ,void*) ;
 int proc_pcontrol_filter ;
 int proc_pcontrol_null ;
 int proc_rele (TYPE_1__*) ;
 int psignal (TYPE_1__*,int ) ;
 int vm_compressor_pages_compressed () ;

int
no_paging_space_action()
{
 proc_t p;
 struct no_paging_space nps;
 struct timeval now;




 microtime(&now);

 if (now.tv_sec <= last_no_space_action.tv_sec + 5)
  return (0);
 bzero(&nps, sizeof(nps));

 proc_iterate(PROC_ALLPROCLIST, proc_pcontrol_null, (void *)((void*)0), proc_pcontrol_filter, (void *)&nps);
 if (nps.npcs_max_size > (vm_compressor_pages_compressed() * 50) / 100) {




  if ((p = proc_find(nps.npcs_pid)) != PROC_NULL) {

   if (nps.npcs_uniqueid == p->p_uniqueid) {





    last_no_space_action = now;

    printf("low swap: killing largest compressed process with pid %d (%s) and size %llu MB\n", p->p_pid, p->p_comm, (nps.pcs_max_size/MB_SIZE));
    psignal(p, SIGKILL);

    proc_rele(p);

    return (0);
   }

   proc_rele(p);
  }
 }





 if (memorystatus_get_proccnt_upto_priority(max_kill_priority) > 0) {

  last_no_space_action = now;
  memorystatus_kill_on_VM_compressor_space_shortage(TRUE );
  return (1);
 }






 if (nps.pcs_max_size > 0) {
  if ((p = proc_find(nps.pcs_pid)) != PROC_NULL) {

   if (nps.pcs_uniqueid == p->p_uniqueid) {





    last_no_space_action = now;

    proc_dopcontrol(p);

    proc_rele(p);

    return (1);
   }

   proc_rele(p);
  }
 }
 last_no_space_action = now;

 printf("low swap: unable to find any eligible processes to take action on\n");

 return (0);
}
