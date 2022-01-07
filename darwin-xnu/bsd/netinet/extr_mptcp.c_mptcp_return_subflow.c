
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptsub {int mpts_socket; } ;


 scalar_t__ mptcp_subflow_cwnd_space (int ) ;

__attribute__((used)) static struct mptsub *
mptcp_return_subflow(struct mptsub *mpts)
{
 if (mpts && mptcp_subflow_cwnd_space(mpts->mpts_socket) <= 0)
  return (((void*)0));

 return (mpts);
}
