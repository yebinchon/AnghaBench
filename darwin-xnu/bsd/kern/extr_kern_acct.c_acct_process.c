
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct tty {int t_dev; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct session {int dummy; } ;
struct rusage {int ru_ixrss; int ru_idrss; int ru_isrss; int ru_inblock; int ru_oublock; } ;
struct acct {int ac_mem; int ac_flag; int ac_tty; int ac_gid; int ac_uid; void* ac_io; void* ac_etime; int ac_btime; void* ac_stime; void* ac_utime; int ac_comm; } ;
typedef TYPE_2__* proc_t ;
typedef int off_t ;
typedef int kauth_cred_t ;
typedef int caddr_t ;
typedef int an_acct ;
struct TYPE_13__ {int tv_sec; } ;
struct TYPE_12__ {int p_flag; int p_acflag; TYPE_1__* p_stats; TYPE_4__ p_start; int p_comm; } ;
struct TYPE_11__ {struct rusage p_ru; } ;


 int ACCT_SUBSYS_LOCK () ;
 int ACCT_SUBSYS_UNLOCK () ;
 int IO_APPEND ;
 int IO_UNIT ;
 int NODEV ;
 struct vnode* NULLVP ;
 int P_CONTROLT ;
 struct session* SESSION_NULL ;
 struct tty* SESSION_TP (struct session*) ;
 struct tty* TTY_NULL ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 struct vnode* acctp ;
 int bcopy (int ,int ,int) ;
 int calcru (TYPE_2__*,struct timeval*,struct timeval*,int *) ;
 void* encode_comp_t (int,int) ;
 int hz ;
 int kauth_cred_getrgid (int ) ;
 int kauth_cred_getruid (int ) ;
 int kauth_cred_proc_ref (TYPE_2__*) ;
 int kauth_cred_unref (int *) ;
 int microtime (struct timeval*) ;
 int proc_lock (TYPE_2__*) ;
 struct session* proc_session (TYPE_2__*) ;
 int proc_unlock (TYPE_2__*) ;
 int session_rele (struct session*) ;
 int tick ;
 int timevaladd (struct timeval*,struct timeval*) ;
 int timevalsub (struct timeval*,TYPE_4__*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int vn_rdwr (int ,struct vnode*,int ,int,int ,int ,int,int ,int*,TYPE_2__*) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;

int
acct_process(proc_t p)
{
 struct acct an_acct;
 struct rusage rup, *r;
 struct timeval ut, st, tmp;
 int t;
 int error;
 struct vnode *vp;
 kauth_cred_t safecred;
 struct session * sessp;
 struct tty *tp;


 ACCT_SUBSYS_LOCK();
 vp = acctp;
 if (vp == NULLVP) {
  ACCT_SUBSYS_UNLOCK();
  return (0);
 }






 bcopy(p->p_comm, an_acct.ac_comm, sizeof an_acct.ac_comm);


 calcru(p, &ut, &st, ((void*)0));
 an_acct.ac_utime = encode_comp_t(ut.tv_sec, ut.tv_usec);
 an_acct.ac_stime = encode_comp_t(st.tv_sec, st.tv_usec);


 an_acct.ac_btime = p->p_start.tv_sec;
 microtime(&tmp);
 timevalsub(&tmp, &p->p_start);
 an_acct.ac_etime = encode_comp_t(tmp.tv_sec, tmp.tv_usec);


 proc_lock(p);
 rup = p->p_stats->p_ru;
 proc_unlock(p);
 r = &rup;
 tmp = ut;
 timevaladd(&tmp, &st);
 t = tmp.tv_sec * hz + tmp.tv_usec / tick;
 if (t)
  an_acct.ac_mem = (r->ru_ixrss + r->ru_idrss + r->ru_isrss) / t;
 else
  an_acct.ac_mem = 0;


 an_acct.ac_io = encode_comp_t(r->ru_inblock + r->ru_oublock, 0);


 safecred = kauth_cred_proc_ref(p);

 an_acct.ac_uid = kauth_cred_getruid(safecred);
 an_acct.ac_gid = kauth_cred_getrgid(safecred);



 sessp = proc_session(p);
 if ((p->p_flag & P_CONTROLT) && (sessp != SESSION_NULL) && ((tp = SESSION_TP(sessp)) != TTY_NULL)) {
  tty_lock(tp);
  an_acct.ac_tty = tp->t_dev;
  tty_unlock(tp);
  }else
  an_acct.ac_tty = NODEV;

 if (sessp != SESSION_NULL)
  session_rele(sessp);


 an_acct.ac_flag = p->p_acflag;




 if ((error = vnode_getwithref(vp)) == 0) {
         error = vn_rdwr(UIO_WRITE, vp, (caddr_t)&an_acct, sizeof (an_acct),
    (off_t)0, UIO_SYSSPACE, IO_APPEND|IO_UNIT, safecred,
    (int *)0, p);
  vnode_put(vp);
 }

 kauth_cred_unref(&safecred);
 ACCT_SUBSYS_UNLOCK();

 return (error);
}
