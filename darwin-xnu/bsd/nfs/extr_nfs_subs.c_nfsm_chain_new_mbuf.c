
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsm_chain {int nmc_flags; int nmc_left; scalar_t__ nmc_ptr; int * nmc_mcur; } ;
typedef int * mbuf_t ;
typedef scalar_t__ caddr_t ;


 int NFSM_CHAIN_FLAG_ADD_CLUSTERS ;
 scalar_t__ mbuf_data (int *) ;
 int mbuf_free (int *) ;
 int mbuf_setlen (int *,scalar_t__) ;
 int mbuf_setnext (int *,int *) ;
 int mbuf_trailingspace (int *) ;
 size_t nfs_mbuf_minclsize ;
 int nfsm_mbuf_get (int,int **,size_t) ;
 int panic (char*) ;

int
nfsm_chain_new_mbuf(struct nfsm_chain *nmc, size_t sizehint)
{
 mbuf_t mb;
 int error = 0;

 if (nmc->nmc_flags & NFSM_CHAIN_FLAG_ADD_CLUSTERS)
  sizehint = nfs_mbuf_minclsize;


 nfsm_mbuf_get(error, &mb, sizehint);
 if (error)
  return (error);
 if (mb == ((void*)0))
  panic("got NULL mbuf?");


 if (nmc->nmc_mcur) {

  mbuf_setlen(nmc->nmc_mcur, nmc->nmc_ptr - (caddr_t)mbuf_data(nmc->nmc_mcur));

  error = mbuf_setnext(nmc->nmc_mcur, mb);
  if (error) {
   mbuf_free(mb);
   return (error);
  }
 }


 nmc->nmc_mcur = mb;
 nmc->nmc_ptr = mbuf_data(mb);
 nmc->nmc_left = mbuf_trailingspace(mb);

 return (0);
}
