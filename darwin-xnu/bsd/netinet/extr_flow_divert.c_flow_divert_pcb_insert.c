
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct flow_divert_pcb {int so; scalar_t__ hash; struct flow_divert_group* group; } ;
struct flow_divert_group {int lck; int pcb_tree; } ;
typedef int key ;
typedef int errno_t ;


 int EEXIST ;
 int EINVAL ;
 int ENETUNREACH ;
 int FDLOG (int ,int *,char*,size_t) ;
 int FDLOG0 (int ,int *,char*) ;
 int FDRETAIN (struct flow_divert_pcb*) ;
 size_t GROUP_COUNT_MAX ;
 int LOG_ERR ;
 struct flow_divert_pcb* RB_FIND (int ,int *,struct flow_divert_pcb*) ;
 struct flow_divert_pcb* RB_INSERT (int ,int *,struct flow_divert_pcb*) ;
 size_t RandomULong () ;
 int fd_pcb_tree ;
 scalar_t__ g_active_group_count ;
 int g_flow_divert_group_lck ;
 struct flow_divert_group** g_flow_divert_groups ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int lck_rw_lock_shared (int *) ;
 scalar_t__ net_flowhash (size_t*,int,size_t) ;
 int nil_pcb ;
 int socket_lock (int ,int ) ;
 int socket_unlock (int ,int ) ;

__attribute__((used)) static errno_t
flow_divert_pcb_insert(struct flow_divert_pcb *fd_cb, uint32_t ctl_unit)
{
 errno_t error = 0;
 struct flow_divert_pcb *exist = ((void*)0);
 struct flow_divert_group *group;
 static uint32_t g_nextkey = 1;
 static uint32_t g_hash_seed = 0;
 int try_count = 0;

 if (ctl_unit == 0 || ctl_unit >= GROUP_COUNT_MAX) {
  return EINVAL;
 }

 socket_unlock(fd_cb->so, 0);
 lck_rw_lock_shared(&g_flow_divert_group_lck);

 if (g_flow_divert_groups == ((void*)0) || g_active_group_count == 0) {
  FDLOG0(LOG_ERR, &nil_pcb, "No active groups, flow divert cannot be used for this socket");
  error = ENETUNREACH;
  goto done;
 }

 group = g_flow_divert_groups[ctl_unit];
 if (group == ((void*)0)) {
  FDLOG(LOG_ERR, &nil_pcb, "Group for control unit %u is NULL, flow divert cannot be used for this socket", ctl_unit);
  error = ENETUNREACH;
  goto done;
 }

 socket_lock(fd_cb->so, 0);

 do {
  uint32_t key[2];
  uint32_t idx;

  key[0] = g_nextkey++;
  key[1] = RandomULong();

  if (g_hash_seed == 0) {
   g_hash_seed = RandomULong();
  }

  fd_cb->hash = net_flowhash(key, sizeof(key), g_hash_seed);

  for (idx = 1; idx < GROUP_COUNT_MAX; idx++) {
   struct flow_divert_group *curr_group = g_flow_divert_groups[idx];
   if (curr_group != ((void*)0) && curr_group != group) {
    lck_rw_lock_shared(&curr_group->lck);
    exist = RB_FIND(fd_pcb_tree, &curr_group->pcb_tree, fd_cb);
    lck_rw_done(&curr_group->lck);
    if (exist != ((void*)0)) {
     break;
    }
   }
  }

  if (exist == ((void*)0)) {
   lck_rw_lock_exclusive(&group->lck);
   exist = RB_INSERT(fd_pcb_tree, &group->pcb_tree, fd_cb);
   lck_rw_done(&group->lck);
  }
 } while (exist != ((void*)0) && try_count++ < 3);

 if (exist == ((void*)0)) {
  fd_cb->group = group;
  FDRETAIN(fd_cb);
 } else {
  fd_cb->hash = 0;
  error = EEXIST;
 }

 socket_unlock(fd_cb->so, 0);

done:
 lck_rw_done(&g_flow_divert_group_lck);
 socket_lock(fd_cb->so, 0);

 return error;
}
