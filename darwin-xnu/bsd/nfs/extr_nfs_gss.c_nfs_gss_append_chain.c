
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsm_chain {int nmc_left; scalar_t__ nmc_ptr; int * nmc_mcur; } ;
typedef int * mbuf_t ;
typedef scalar_t__ caddr_t ;


 scalar_t__ mbuf_data (int *) ;
 scalar_t__ mbuf_len (int *) ;
 int * mbuf_next (int *) ;
 int mbuf_setnext (int *,int *) ;
 int mbuf_trailingspace (int *) ;

__attribute__((used)) static int
nfs_gss_append_chain(struct nfsm_chain *nmc, mbuf_t mc)
{
 int error = 0;
 mbuf_t mb, tail;


 error = mbuf_setnext(nmc->nmc_mcur, mc);
 if (error)
  return (error);


 tail = ((void*)0);
 for (mb = mc; mb; mb = mbuf_next(mb))
  tail = mb;

 nmc->nmc_mcur = tail;
 nmc->nmc_ptr = (caddr_t) mbuf_data(tail) + mbuf_len(tail);
 nmc->nmc_left = mbuf_trailingspace(tail);

 return (0);
}
