
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ result; } ;
struct TYPE_4__ {TYPE_1__ results; } ;
struct inpcb {TYPE_2__ inp_policyresult; } ;


 int FALSE ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_SCOPED_DIRECT ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_SOCKET_SCOPED ;

bool
necp_socket_should_rescope(struct inpcb *inp)
{
 if (inp == ((void*)0)) {
  return (FALSE);
 }

 return (inp->inp_policyresult.results.result == NECP_KERNEL_POLICY_RESULT_SOCKET_SCOPED ||
   inp->inp_policyresult.results.result == NECP_KERNEL_POLICY_RESULT_SCOPED_DIRECT);
}
