
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
struct session {scalar_t__ s_ttyvp; int s_ttyvid; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_4__ {int p_flag; } ;


 scalar_t__ NULLVP ;
 int P_CONTROLT ;
 struct session* proc_session (TYPE_1__*) ;
 int session_lock (struct session*) ;
 int session_rele (struct session*) ;
 int session_unlock (struct session*) ;
 scalar_t__ vnode_getwithvid (scalar_t__,int) ;

__attribute__((used)) static vnode_t
cttyvp(proc_t p)
{
 vnode_t vp;
 int vid;
 struct session *sessp;

 sessp = proc_session(p);

 session_lock(sessp);
 vp = (p->p_flag & P_CONTROLT ? sessp->s_ttyvp : NULLVP);
 vid = sessp->s_ttyvid;
 session_unlock(sessp);

 session_rele(sessp);

 if (vp != NULLVP) {

  if (vnode_getwithvid(vp, vid) != 0)
   vp = NULLVP;
 }
 return(vp);
}
