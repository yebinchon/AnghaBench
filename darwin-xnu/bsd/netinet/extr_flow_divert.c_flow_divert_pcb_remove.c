
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_divert_pcb {struct flow_divert_group* group; int ref_count; } ;
struct flow_divert_group {int lck; int pcb_tree; int ctl_unit; } ;


 int FDLOG (int ,struct flow_divert_pcb*,char*,int ,int ) ;
 int FDRELEASE (struct flow_divert_pcb*) ;
 int LOG_INFO ;
 int RB_REMOVE (int ,int *,struct flow_divert_pcb*) ;
 int fd_pcb_tree ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;

__attribute__((used)) static void
flow_divert_pcb_remove(struct flow_divert_pcb *fd_cb)
{
 if (fd_cb->group != ((void*)0)) {
  struct flow_divert_group *group = fd_cb->group;
  lck_rw_lock_exclusive(&group->lck);
  FDLOG(LOG_INFO, fd_cb, "Removing from group %d, ref count = %d", group->ctl_unit, fd_cb->ref_count);
  RB_REMOVE(fd_pcb_tree, &group->pcb_tree, fd_cb);
  fd_cb->group = ((void*)0);
  FDRELEASE(fd_cb);
  lck_rw_done(&group->lck);
 }
}
