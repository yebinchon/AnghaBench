
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int div_detach (struct socket*) ;
 int soisdisconnected (struct socket*) ;

__attribute__((used)) static int
div_abort(struct socket *so)
{
 soisdisconnected(so);
 return div_detach(so);
}
