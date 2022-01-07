
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ so_pcb; } ;
struct sockaddr_ctl {int sc_len; int sc_unit; int sc_id; int ss_sysaddr; int sc_family; } ;
struct sockaddr {int dummy; } ;
struct kctl {int id; } ;
struct TYPE_2__ {int sc_unit; } ;
struct ctl_cb {TYPE_1__ sac; struct kctl* kctl; } ;


 int AF_SYSTEM ;
 int AF_SYS_CONTROL ;
 int EINVAL ;
 int ENOTCONN ;
 int bzero (struct sockaddr_ctl*,int) ;
 struct sockaddr* dup_sockaddr (struct sockaddr*,int) ;

__attribute__((used)) static int
ctl_peeraddr(struct socket *so, struct sockaddr **nam)
{
 struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;
 struct kctl *kctl;
 struct sockaddr_ctl sc;

 if (kcb == ((void*)0))
  return (ENOTCONN);

 if ((kctl = kcb->kctl) == ((void*)0))
  return (EINVAL);

 bzero(&sc, sizeof(struct sockaddr_ctl));
 sc.sc_len = sizeof(struct sockaddr_ctl);
 sc.sc_family = AF_SYSTEM;
 sc.ss_sysaddr = AF_SYS_CONTROL;
 sc.sc_id = kctl->id;
 sc.sc_unit = kcb->sac.sc_unit;

 *nam = dup_sockaddr((struct sockaddr *)&sc, 1);

 return (0);
}
