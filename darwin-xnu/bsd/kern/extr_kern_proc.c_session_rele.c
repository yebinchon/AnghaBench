
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {scalar_t__ s_count; int s_listflags; int s_mlock; } ;


 int FREE_ZONE (struct session*,int,int ) ;
 int LIST_REMOVE (struct session*,int ) ;
 int M_SESSION ;
 int S_LIST_DEAD ;
 int S_LIST_TERM ;
 int lck_mtx_destroy (int *,int ) ;
 int panic (char*) ;
 int proc_lck_grp ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_mlock_grp ;
 int s_hash ;

void
session_rele(struct session *sess)
{
 proc_list_lock();
 if (--sess->s_count == 0) {
  if ((sess->s_listflags & (S_LIST_TERM | S_LIST_DEAD)) != 0)
   panic("session_rele: terminating already terminated session");
  sess->s_listflags |= S_LIST_TERM;
  LIST_REMOVE(sess, s_hash);
  sess->s_listflags |= S_LIST_DEAD;
  if (sess->s_count != 0)
   panic("session_rele: freeing session in use");
  proc_list_unlock();



  lck_mtx_destroy(&sess->s_mlock, proc_lck_grp);

  FREE_ZONE(sess, sizeof(struct session), M_SESSION);
 } else
  proc_list_unlock();
}
