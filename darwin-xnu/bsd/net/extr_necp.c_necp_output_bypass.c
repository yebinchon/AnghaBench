
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 scalar_t__ necp_get_is_keepalive_from_packet (struct mbuf*) ;
 scalar_t__ necp_is_intcoproc (int *,struct mbuf*) ;
 scalar_t__ necp_is_loopback (int *,int *,int *,struct mbuf*) ;
 scalar_t__ necp_pass_keepalives ;
 scalar_t__ necp_pass_loopback ;

__attribute__((used)) static inline bool
necp_output_bypass(struct mbuf *packet)
{
 if (necp_pass_loopback > 0 && necp_is_loopback(((void*)0), ((void*)0), ((void*)0), packet)) {
  return (1);
 }
 if (necp_pass_keepalives > 0 && necp_get_is_keepalive_from_packet(packet)) {
  return (1);
 }
 if (necp_is_intcoproc(((void*)0), packet)) {
  return (1);
 }
 return (0);
}
