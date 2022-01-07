
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; } ;
struct mppcb {int mpp_state; } ;


 int MPPCB_STATE_DEAD ;
 int SOF_PCBCLEARING ;
 int mp_gc_sched () ;
 struct mppcb* mpsotomppcb (struct socket*) ;

void
mp_pcbdetach(struct socket *mp_so)
{
 struct mppcb *mpp = mpsotomppcb(mp_so);

 mpp->mpp_state = MPPCB_STATE_DEAD;
 if (!(mp_so->so_flags & SOF_PCBCLEARING))
  mp_so->so_flags |= SOF_PCBCLEARING;

 mp_gc_sched();
}
