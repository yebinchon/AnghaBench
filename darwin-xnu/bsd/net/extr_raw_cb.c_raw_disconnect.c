
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; int so_state; } ;
struct rawcb {scalar_t__ rcb_faddr; struct socket* rcb_socket; } ;


 int SOF_MP_SUBFLOW ;
 int SS_NOFDREF ;
 int dtom (scalar_t__) ;
 int m_freem (int ) ;
 int raw_detach (struct rawcb*) ;

void
raw_disconnect(struct rawcb *rp)
{
 struct socket *so = rp->rcb_socket;
 if (!(so->so_flags & SOF_MP_SUBFLOW) && (so->so_state & SS_NOFDREF))
  raw_detach(rp);
}
