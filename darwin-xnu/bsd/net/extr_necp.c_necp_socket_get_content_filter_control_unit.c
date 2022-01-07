
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct socket {int dummy; } ;
struct TYPE_3__ {int filter_control_unit; } ;
struct TYPE_4__ {TYPE_1__ results; } ;
struct inpcb {TYPE_2__ inp_policyresult; } ;


 struct inpcb* sotoinpcb (struct socket*) ;

u_int32_t
necp_socket_get_content_filter_control_unit(struct socket *so)
{
 struct inpcb *inp = sotoinpcb(so);

 if (inp == ((void*)0)) {
  return (0);
 }
 return (inp->inp_policyresult.results.filter_control_unit);
}
