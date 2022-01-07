
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ last_pid; scalar_t__ last_upid; int last_uuid; } ;


 int so_update_policy (struct socket*) ;
 int uuid_copy (int ,int ) ;

void
mptcp_update_last_owner(struct socket *so, struct socket *mp_so)
{
 if (so->last_pid != mp_so->last_pid ||
     so->last_upid != mp_so->last_upid) {
  so->last_upid = mp_so->last_upid;
  so->last_pid = mp_so->last_pid;
  uuid_copy(so->last_uuid, mp_so->last_uuid);
 }
 so_update_policy(so);
}
