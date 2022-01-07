
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;


 int ENOTCONN ;
 int SS_ISCONNECTED ;
 int div_abort (struct socket*) ;

__attribute__((used)) static int
div_disconnect(struct socket *so)
{
 if ((so->so_state & SS_ISCONNECTED) == 0)
  return ENOTCONN;
 return div_abort(so);
}
