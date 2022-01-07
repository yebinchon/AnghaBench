
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_ssize_t ;
struct uio {int dummy; } ;
struct socket {int dummy; } ;
struct mbuf {struct mbuf* m_next; scalar_t__ m_len; } ;


 int caddr_t ;
 int m_freem_list (struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int uiomove (int ,int,struct uio*) ;

__attribute__((used)) static int
sodelayed_copy(struct socket *so, struct uio *uio, struct mbuf **free_list,
    user_ssize_t *resid)
{
 int error = 0;
 struct mbuf *m;

 m = *free_list;

 socket_unlock(so, 0);

 while (m != ((void*)0) && error == 0) {
  error = uiomove(mtod(m, caddr_t), (int)m->m_len, uio);
  m = m->m_next;
 }
 m_freem_list(*free_list);

 *free_list = ((void*)0);
 *resid = 0;

 socket_lock(so, 0);

 return (error);
}
