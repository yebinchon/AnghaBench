
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct session {int dummy; } ;
typedef TYPE_1__* proc_t ;
typedef scalar_t__ kauth_cred_t ;
struct TYPE_8__ {struct session* pg_session; } ;
struct TYPE_7__ {TYPE_6__* p_pgrp; } ;


 scalar_t__ NOCRED ;
 TYPE_6__* PGRP_NULL ;
 struct session* SESSION_NULL ;
 int SIGCONT ;
 int SIGKILL ;
 TYPE_1__* initproc ;
 scalar_t__ kauth_cred_getruid (scalar_t__) ;
 scalar_t__ kauth_cred_getsvuid (scalar_t__) ;
 scalar_t__ kauth_cred_getuid (scalar_t__) ;
 scalar_t__ kauth_cred_issuser (scalar_t__) ;
 scalar_t__ kauth_cred_proc_ref (TYPE_1__*) ;
 int kauth_cred_unref (scalar_t__*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

__attribute__((used)) static int
cansignal_nomac(proc_t src, kauth_cred_t uc_src, proc_t dst, int signum)
{

 if (src == dst) {
  return 1;
 }


 if (signum == SIGKILL && dst == initproc) {
  return 0;
 }


 if (kauth_cred_issuser(uc_src)) {
  return 1;
 }


 {
  struct session *sess_src = SESSION_NULL;
  struct session *sess_dst = SESSION_NULL;


  proc_list_lock();
  if (src->p_pgrp != PGRP_NULL) {
   sess_src = src->p_pgrp->pg_session;
  }
  if (dst->p_pgrp != PGRP_NULL) {
   sess_dst = dst->p_pgrp->pg_session;
  }
  proc_list_unlock();


  if (signum == SIGCONT && sess_src == sess_dst) {
   return 1;
  }
 }


 {
  int allowed = 0;
  kauth_cred_t uc_dst = NOCRED, uc_ref = NOCRED;

  uc_dst = uc_ref = kauth_cred_proc_ref(dst);





  if (kauth_cred_getruid(uc_src) == kauth_cred_getruid(uc_dst) ||
   kauth_cred_getruid(uc_src) == kauth_cred_getsvuid(uc_dst) ||
   kauth_cred_getuid(uc_src) == kauth_cred_getruid(uc_dst) ||
   kauth_cred_getuid(uc_src) == kauth_cred_getsvuid(uc_dst)) {
   allowed = 1;
  }

  if (uc_ref != NOCRED) {
   kauth_cred_unref(&uc_ref);
   uc_ref = NOCRED;
  }

  return allowed;
 }
}
