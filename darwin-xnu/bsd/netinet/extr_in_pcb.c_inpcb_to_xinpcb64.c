
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int inp6_hops; scalar_t__ inp6_ifindex; int inp6_cksum; scalar_t__ inp6_hlim; } ;
struct TYPE_13__ {int inp4_ip_tos; } ;
struct TYPE_11__ {int inp6_local; } ;
struct TYPE_9__ {int inp6_foreign; } ;
struct xinpcb64 {TYPE_7__ inp_depend6; TYPE_5__ inp_depend4; TYPE_3__ inp_dependladdr; TYPE_1__ inp_dependfaddr; int inp_ip_p; int inp_ip_ttl; int inp_vflag; int inp_flow; int inp_flags; int inp_gencnt; int inp_lport; int inp_fport; } ;
struct TYPE_16__ {int inp6_hops; int inp6_cksum; } ;
struct TYPE_14__ {int inp4_ip_tos; } ;
struct TYPE_12__ {int inp6_local; } ;
struct TYPE_10__ {int inp6_foreign; } ;
struct inpcb {TYPE_8__ inp_depend6; TYPE_6__ inp_depend4; TYPE_4__ inp_dependladdr; TYPE_2__ inp_dependfaddr; int inp_ip_p; int inp_ip_ttl; int inp_vflag; int inp_flow; int inp_flags; int inp_gencnt; int inp_lport; int inp_fport; } ;



void
inpcb_to_xinpcb64(struct inpcb *inp, struct xinpcb64 *xinp)
{
 xinp->inp_fport = inp->inp_fport;
 xinp->inp_lport = inp->inp_lport;
 xinp->inp_gencnt = inp->inp_gencnt;
 xinp->inp_flags = inp->inp_flags;
 xinp->inp_flow = inp->inp_flow;
 xinp->inp_vflag = inp->inp_vflag;
 xinp->inp_ip_ttl = inp->inp_ip_ttl;
 xinp->inp_ip_p = inp->inp_ip_p;
 xinp->inp_dependfaddr.inp6_foreign = inp->inp_dependfaddr.inp6_foreign;
 xinp->inp_dependladdr.inp6_local = inp->inp_dependladdr.inp6_local;
 xinp->inp_depend4.inp4_ip_tos = inp->inp_depend4.inp4_ip_tos;
 xinp->inp_depend6.inp6_hlim = 0;
 xinp->inp_depend6.inp6_cksum = inp->inp_depend6.inp6_cksum;
 xinp->inp_depend6.inp6_ifindex = 0;
 xinp->inp_depend6.inp6_hops = inp->inp_depend6.inp6_hops;
}
