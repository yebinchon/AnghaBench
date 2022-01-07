
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; int so_restrictions; int so_klist; } ;


 int KNOTE (int *,long) ;
 int SOF_KNOTE ;
 int SOF_MP_SUBFLOW ;
 long SO_FILT_HINT_IFDENIED ;
 int SO_RESTRICT_DENY_CELLULAR ;
 int SO_RESTRICT_DENY_EXPENSIVE ;
 int soevent_ifdenied (struct socket*) ;
 int soevupcall (struct socket*,long) ;

void
soevent(struct socket *so, long hint)
{
 if (so->so_flags & SOF_KNOTE)
  KNOTE(&so->so_klist, hint);

 soevupcall(so, hint);





 if ((hint & SO_FILT_HINT_IFDENIED) &&
     !(so->so_flags & SOF_MP_SUBFLOW) &&
     !(so->so_restrictions & SO_RESTRICT_DENY_CELLULAR) &&
     !(so->so_restrictions & SO_RESTRICT_DENY_EXPENSIVE))
  soevent_ifdenied(so);
}
