
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct socket {scalar_t__ last_pid; int so_flags; scalar_t__ so_policy_gencnt; int last_uuid; int e_uuid; } ;
struct inpcb {scalar_t__ inp_state; struct socket* inp_socket; } ;
typedef scalar_t__ int32_t ;


 int ENOENT ;
 int FALSE ;
 scalar_t__ INPCB_STATE_DEAD ;
 int PROC_UUID_NECP_APP_POLICY ;
 int PROC_UUID_NO_CELLULAR ;
 int SOF_DELEGATED ;
 int TRUE ;
 int inp_update_cellular_policy (struct inpcb*,int ) ;
 int inp_update_necp_want_app_policy (struct inpcb*,int ) ;
 int net_io_policy_uuid ;
 int proc_uuid_policy_lookup (int ,int*,scalar_t__*) ;

int
inp_update_policy(struct inpcb *inp)
{
#pragma unused(inp)
 return (0);

}
