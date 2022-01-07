
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct socket {int so_flags; } ;


 int SOF_MP_SEC_SUBFLOW ;
 unsigned int mptcp_setup_first_subflow_syn_opts (struct socket*,int *,unsigned int) ;
 unsigned int mptcp_setup_join_subflow_syn_opts (struct socket*,int *,unsigned int) ;

unsigned
mptcp_setup_syn_opts(struct socket *so, u_char *opt, unsigned optlen)
{
 unsigned new_optlen;

 if (!(so->so_flags & SOF_MP_SEC_SUBFLOW))
  new_optlen = mptcp_setup_first_subflow_syn_opts(so, opt, optlen);
 else
  new_optlen = mptcp_setup_join_subflow_syn_opts(so, opt, optlen);

 return (new_optlen);
}
