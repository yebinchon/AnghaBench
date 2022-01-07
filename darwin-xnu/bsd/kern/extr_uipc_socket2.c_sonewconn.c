
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int sflt_connectin (struct socket*,struct sockaddr const*) ;
 struct socket* sonewconn_internal (struct socket*,int) ;

struct socket *
sonewconn(struct socket *head, int connstatus, const struct sockaddr *from)
{
 int error = sflt_connectin(head, from);
 if (error) {
  return (((void*)0));
 }

 return (sonewconn_internal(head, connstatus));
}
