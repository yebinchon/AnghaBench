
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsm_chain {scalar_t__ nmc_mhead; scalar_t__ nmc_mcur; int nmc_ptr; } ;
typedef scalar_t__ mbuf_t ;
typedef int caddr_t ;


 scalar_t__ mbuf_data (scalar_t__) ;
 scalar_t__ mbuf_len (scalar_t__) ;
 scalar_t__ mbuf_next (scalar_t__) ;

int
nfsm_chain_offset(struct nfsm_chain *nmc)
{
 mbuf_t mb;
 int len = 0;

 for (mb = nmc->nmc_mhead; mb; mb = mbuf_next(mb)) {
  if (mb == nmc->nmc_mcur)
   return (len + (nmc->nmc_ptr - (caddr_t) mbuf_data(mb)));
  len += mbuf_len(mb);
 }

 return (len);
}
