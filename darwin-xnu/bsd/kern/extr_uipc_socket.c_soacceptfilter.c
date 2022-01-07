
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;
struct sockaddr {int dummy; } ;


 int ECONNABORTED ;
 int EJUSTRETURN ;
 int FALSE ;
 int SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL ;
 int SS_NOFDREF ;
 int current_proc () ;
 int sflt_accept (struct socket*,struct socket*,struct sockaddr*,struct sockaddr*) ;
 int sock_freeaddr (struct sockaddr*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int soclose (struct socket*) ;
 scalar_t__ sogetaddr_locked (struct socket*,struct sockaddr**,int) ;
 int sosetdefunct (int ,struct socket*,int ,int ) ;

int
soacceptfilter(struct socket *so, struct socket *head)
{
 struct sockaddr *local = ((void*)0), *remote = ((void*)0);
 int error = 0;






 socket_lock(so, 1);
 if (sogetaddr_locked(so, &remote, 1) != 0 ||
     sogetaddr_locked(so, &local, 0) != 0) {
  so->so_state &= ~SS_NOFDREF;
  socket_unlock(so, 1);
  soclose(so);

  error = ECONNABORTED;
  goto done;
 }

 error = sflt_accept(head, so, local, remote);






 if (error == EJUSTRETURN) {
  error = 0;
  (void) sosetdefunct(current_proc(), so,
      SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL, FALSE);
 }

 if (error != 0) {






  so->so_state &= ~SS_NOFDREF;
  socket_unlock(so, 1);
  soclose(so);

 } else {
  socket_unlock(so, 1);
 }
done:

 sock_freeaddr(remote);
 sock_freeaddr(local);
 return (error);
}
