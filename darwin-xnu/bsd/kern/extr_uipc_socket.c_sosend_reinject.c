
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct socket {TYPE_2__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int m_flags; scalar_t__ m_type; struct mbuf* m_next; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_send ) (struct socket*,int ,struct mbuf*,struct sockaddr*,struct mbuf*,int ) ;} ;


 scalar_t__ MT_CONTROL ;
 int M_PKTHDR ;
 int VERIFY (int) ;
 int current_proc () ;
 int socket_lock_assert_owned (struct socket*) ;
 int stub1 (struct socket*,int ,struct mbuf*,struct sockaddr*,struct mbuf*,int ) ;

int
sosend_reinject(struct socket *so, struct sockaddr *addr, struct mbuf *top, struct mbuf *control, uint32_t sendflags)
{
 struct mbuf *m0, *control_end;

 socket_lock_assert_owned(so);





 VERIFY(top != ((void*)0) &&
     (control == ((void*)0) || top->m_flags & M_PKTHDR));





 if (control == ((void*)0) && (top->m_flags & M_PKTHDR) == 0) {

  for (m0 = top; m0 != ((void*)0); m0 = m0->m_next) {
   if (m0->m_flags & M_PKTHDR) {
    top = m0;
    break;
   } else if (m0->m_type == MT_CONTROL) {
    if (control == ((void*)0)) {

     control = m0;
    }
    if (control != ((void*)0) && m0->m_next != ((void*)0) && m0->m_next->m_type != MT_CONTROL) {

     control_end = m0;
    }
   }
  }
  if (control_end != ((void*)0))
   control_end->m_next = ((void*)0);
 }

 int error = (*so->so_proto->pr_usrreqs->pru_send)
   (so, sendflags, top, addr, control, current_proc());

 return error;
}
