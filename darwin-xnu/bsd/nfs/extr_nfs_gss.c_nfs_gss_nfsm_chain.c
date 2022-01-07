
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsm_chain {scalar_t__ nmc_flags; int nmc_left; scalar_t__ nmc_ptr; int * nmc_mcur; int * nmc_mhead; } ;
typedef int * mbuf_t ;
typedef scalar_t__ caddr_t ;


 scalar_t__ mbuf_data (int *) ;
 scalar_t__ mbuf_len (int *) ;
 int * mbuf_next (int *) ;
 int mbuf_trailingspace (int *) ;

__attribute__((used)) static void
nfs_gss_nfsm_chain(struct nfsm_chain *nmc, mbuf_t mc)
{
 mbuf_t mb, tail;


 tail = ((void*)0);
 for (mb = mc; mb; mb = mbuf_next(mb))
  tail = mb;

 nmc->nmc_mhead = mc;
 nmc->nmc_mcur = tail;
 nmc->nmc_ptr = (caddr_t) mbuf_data(tail) + mbuf_len(tail);
 nmc->nmc_left = mbuf_trailingspace(tail);
 nmc->nmc_flags = 0;
}
