
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int proc_t ;


 int MAC_CHECK (int ,int ,void*,struct sockaddr const*,int,int) ;
 int proc_ucred (int ) ;
 int skywalk_flow_check_listen ;

int
mac_skywalk_flow_check_listen(proc_t proc, void *flow, const struct sockaddr *addr, int type, int protocol)
{
 int error;

 MAC_CHECK(skywalk_flow_check_listen, proc_ucred(proc), flow, addr, type, protocol);
 return (error);
}
