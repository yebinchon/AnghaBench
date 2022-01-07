
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct flow_divert_pcb {int hash; } ;
struct flow_divert_group {int lck; int pcb_tree; } ;


 int FDRETAIN (struct flow_divert_pcb*) ;
 struct flow_divert_pcb* RB_FIND (int ,int *,struct flow_divert_pcb*) ;
 int fd_pcb_tree ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;

__attribute__((used)) static struct flow_divert_pcb *
flow_divert_pcb_lookup(uint32_t hash, struct flow_divert_group *group)
{
 struct flow_divert_pcb key_item;
 struct flow_divert_pcb *fd_cb = ((void*)0);

 key_item.hash = hash;

 lck_rw_lock_shared(&group->lck);
 fd_cb = RB_FIND(fd_pcb_tree, &group->pcb_tree, &key_item);
 FDRETAIN(fd_cb);
 lck_rw_done(&group->lck);

 return fd_cb;
}
