
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ so_retaincnt; int so_usecount; } ;


 int panic (char*,struct socket*,int) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int soclose_locked (struct socket*) ;

int
soclose(struct socket *so)
{
 int error = 0;
 socket_lock(so, 1);

 if (so->so_retaincnt == 0) {
  error = soclose_locked(so);
 } else {




  so->so_usecount--;
  if (so->so_usecount < 2)
   panic("soclose: retaincnt non null and so=%p "
       "usecount=%d\n", so, so->so_usecount);
 }
 socket_unlock(so, 1);
 return (error);
}
