
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct inpcb {int dummy; } ;


 scalar_t__ necp_is_intcoproc (struct inpcb*,int *) ;
 scalar_t__ necp_is_loopback (struct sockaddr*,struct sockaddr*,struct inpcb*,int *) ;
 scalar_t__ necp_pass_loopback ;

__attribute__((used)) static inline bool
necp_socket_bypass(struct sockaddr *override_local_addr, struct sockaddr *override_remote_addr, struct inpcb *inp)
{

 if (necp_pass_loopback > 0 && necp_is_loopback(override_local_addr, override_remote_addr, inp, ((void*)0))) {
  return (1);
 } else if (necp_is_intcoproc(inp, ((void*)0))) {
  return (1);
 }

 return (0);
}
