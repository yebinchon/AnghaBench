
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nfsm_chain {scalar_t__ nmc_left; int nmc_ptr; int nmc_mcur; } ;
typedef int mbuf_t ;


 int EBADRPC ;
 int mbuf_data (int ) ;
 scalar_t__ mbuf_len (int ) ;
 int mbuf_next (int ) ;

int
nfsm_chain_advance(struct nfsm_chain *nmc, uint32_t len)
{
 mbuf_t mb;

 while (len) {
  if (nmc->nmc_left >= len) {
   nmc->nmc_left -= len;
   nmc->nmc_ptr += len;
   return (0);
  }
  len -= nmc->nmc_left;
  nmc->nmc_mcur = mb = mbuf_next(nmc->nmc_mcur);
  if (!mb)
   return (EBADRPC);
  nmc->nmc_ptr = mbuf_data(mb);
  nmc->nmc_left = mbuf_len(mb);
 }

 return (0);
}
