
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int scoped_interface_index; } ;
struct TYPE_5__ {scalar_t__ result; TYPE_1__ result_parameter; } ;
struct TYPE_6__ {TYPE_2__ results; } ;
struct inpcb {TYPE_3__ inp_policyresult; } ;


 scalar_t__ NECP_KERNEL_POLICY_RESULT_SCOPED_DIRECT ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_SOCKET_SCOPED ;
 int necp_get_primary_direct_interface_index () ;

u_int
necp_socket_get_rescope_if_index(struct inpcb *inp)
{
 if (inp == ((void*)0)) {
  return (0);
 }

 if (inp->inp_policyresult.results.result == NECP_KERNEL_POLICY_RESULT_SOCKET_SCOPED) {
  return (inp->inp_policyresult.results.result_parameter.scoped_interface_index);
 } else if (inp->inp_policyresult.results.result == NECP_KERNEL_POLICY_RESULT_SCOPED_DIRECT) {
  return (necp_get_primary_direct_interface_index());
 }

 return (0);
}
