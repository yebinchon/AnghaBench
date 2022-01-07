
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct nfsm_chain {int nmc_left; int * nmc_ptr; scalar_t__ nmc_mcur; } ;
typedef scalar_t__ mbuf_t ;


 int EBADRPC ;
 scalar_t__ MIN (int ,scalar_t__) ;
 int bcopy (int *,int *,scalar_t__) ;
 int * mbuf_data (scalar_t__) ;
 int mbuf_len (scalar_t__) ;
 scalar_t__ mbuf_next (scalar_t__) ;
 int nfsm_chain_adv (int,struct nfsm_chain*,scalar_t__) ;
 scalar_t__ nfsm_rndup (scalar_t__) ;

int
nfsm_chain_get_opaque_f(struct nfsm_chain *nmc, uint32_t len, u_char *buf)
{
 uint32_t cplen, padlen;
 int error = 0;

 padlen = nfsm_rndup(len) - len;


 while (len && nmc->nmc_mcur) {

  cplen = MIN(nmc->nmc_left, len);
  if (cplen) {
   bcopy(nmc->nmc_ptr, buf, cplen);
   nmc->nmc_ptr += cplen;
   nmc->nmc_left -= cplen;
   buf += cplen;
   len -= cplen;
  }

  if (len) {
   mbuf_t mb = mbuf_next(nmc->nmc_mcur);
   nmc->nmc_mcur = mb;
   nmc->nmc_ptr = mb ? mbuf_data(mb) : ((void*)0);
   nmc->nmc_left = mb ? mbuf_len(mb) : 0;
  }
 }


 if (len)
  return (EBADRPC);

 if (padlen)
  nfsm_chain_adv(error, nmc, padlen);

 return (error);
}
