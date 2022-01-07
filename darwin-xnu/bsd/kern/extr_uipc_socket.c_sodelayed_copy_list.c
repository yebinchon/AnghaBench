
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_ssize_t ;
typedef int u_int ;
struct uio {int dummy; } ;
struct socket {int dummy; } ;
struct recv_msg_elem {struct uio* uio; } ;
struct mbuf {int m_len; struct mbuf* m_next; struct mbuf* m_nextpkt; } ;


 int caddr_t ;
 int m_freem_list (struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 int uiomove (int ,int ,struct uio*) ;

__attribute__((used)) static int
sodelayed_copy_list(struct socket *so, struct recv_msg_elem *msgarray,
    u_int uiocnt, struct mbuf **free_list, user_ssize_t *resid)
{
#pragma unused(so)
 int error = 0;
 struct mbuf *ml, *m;
 int i = 0;
 struct uio *auio;

 for (ml = *free_list, i = 0; ml != ((void*)0) && i < uiocnt;
     ml = ml->m_nextpkt, i++) {
  auio = msgarray[i].uio;
  for (m = ml; m != ((void*)0); m = m->m_next) {
   error = uiomove(mtod(m, caddr_t), m->m_len, auio);
   if (error != 0)
    goto out;
  }
 }
out:
 m_freem_list(*free_list);

 *free_list = ((void*)0);
 *resid = 0;

 return (error);
}
