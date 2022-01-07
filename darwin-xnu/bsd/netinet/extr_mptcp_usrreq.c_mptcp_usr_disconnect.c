
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int mpsotompte (struct socket*) ;
 int mptcp_disconnect (int ) ;

__attribute__((used)) static int
mptcp_usr_disconnect(struct socket *mp_so)
{
 return (mptcp_disconnect(mpsotompte(mp_so)));
}
