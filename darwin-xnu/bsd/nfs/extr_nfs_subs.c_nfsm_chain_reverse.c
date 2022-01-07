
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nfsm_chain {scalar_t__ nmc_ptr; int nmc_mhead; int nmc_left; int nmc_mcur; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ mbuf_data (int ) ;
 int nfsm_chain_advance (struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_dissect_init (int,struct nfsm_chain*,int ) ;
 scalar_t__ nfsm_chain_offset (struct nfsm_chain*) ;

int
nfsm_chain_reverse(struct nfsm_chain *nmc, uint32_t len)
{
 uint32_t mlen, new_offset;
 int error = 0;

 mlen = nmc->nmc_ptr - (caddr_t) mbuf_data(nmc->nmc_mcur);
 if (len <= mlen) {
  nmc->nmc_ptr -= len;
  nmc->nmc_left += len;
  return (0);
 }

 new_offset = nfsm_chain_offset(nmc) - len;
 nfsm_chain_dissect_init(error, nmc, nmc->nmc_mhead);
 if (error)
  return (error);

 return (nfsm_chain_advance(nmc, new_offset));
}
