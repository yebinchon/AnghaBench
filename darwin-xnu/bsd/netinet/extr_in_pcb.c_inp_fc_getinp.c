
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct inpcb {int inp_flags2; int infc_link; } ;
struct TYPE_3__ {int inp_flowhash; } ;


 int INP2_IN_FCTREE ;
 int INPFC_REMOVE ;
 int INPFC_SOLOCKED ;
 struct inpcb* RB_FIND (int ,int *,TYPE_1__*) ;
 int RB_REMOVE (int ,int *,struct inpcb*) ;
 int WNT_ACQUIRE ;
 scalar_t__ WNT_STOPUSING ;
 int bzero (int *,int) ;
 scalar_t__ in_pcb_checkstate (struct inpcb*,int ,int) ;
 int inp_fc_lck ;
 int inp_fc_tree ;
 TYPE_1__ key_inp ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static struct inpcb *
inp_fc_getinp(u_int32_t flowhash, u_int32_t flags)
{
 struct inpcb *inp = ((void*)0);
 int locked = (flags & INPFC_SOLOCKED) ? 1 : 0;

 lck_mtx_lock_spin(&inp_fc_lck);
 key_inp.inp_flowhash = flowhash;
 inp = RB_FIND(inp_fc_tree, &inp_fc_tree, &key_inp);
 if (inp == ((void*)0)) {

  lck_mtx_unlock(&inp_fc_lck);
  return (((void*)0));
 }

 if (flags & INPFC_REMOVE) {
  RB_REMOVE(inp_fc_tree, &inp_fc_tree, inp);
  lck_mtx_unlock(&inp_fc_lck);

  bzero(&(inp->infc_link), sizeof (inp->infc_link));
  inp->inp_flags2 &= ~INP2_IN_FCTREE;
  return (((void*)0));
 }

 if (in_pcb_checkstate(inp, WNT_ACQUIRE, locked) == WNT_STOPUSING)
  inp = ((void*)0);
 lck_mtx_unlock(&inp_fc_lck);

 return (inp);
}
