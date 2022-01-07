
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_ssize_t ;
typedef int uint32_t ;
struct uio {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
typedef int sae_connid_t ;
typedef int sae_associd_t ;


 int AF_INET ;
 int udp_connectx_common (struct socket*,int ,struct sockaddr*,struct sockaddr*,struct proc*,int ,int ,int *,int ,void*,int ,struct uio*,int *) ;

int
udp_connectx(struct socket *so, struct sockaddr *src,
    struct sockaddr *dst, struct proc *p, uint32_t ifscope,
    sae_associd_t aid, sae_connid_t *pcid, uint32_t flags, void *arg,
    uint32_t arglen, struct uio *uio, user_ssize_t *bytes_written)
{
 return (udp_connectx_common(so, AF_INET, src, dst,
     p, ifscope, aid, pcid, flags, arg, arglen, uio, bytes_written));
}
