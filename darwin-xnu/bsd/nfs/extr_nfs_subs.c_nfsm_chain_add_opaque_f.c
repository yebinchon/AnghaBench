
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct nfsm_chain {scalar_t__ nmc_left; int nmc_ptr; } ;


 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int bcopy (int const*,int ,scalar_t__) ;
 int bzero (int ,scalar_t__) ;
 int nfsm_chain_new_mbuf (struct nfsm_chain*,scalar_t__) ;
 scalar_t__ nfsm_rndup (scalar_t__) ;

int
nfsm_chain_add_opaque_f(struct nfsm_chain *nmc, const u_char *buf, uint32_t len)
{
 uint32_t paddedlen, tlen;
 int error;

 paddedlen = nfsm_rndup(len);

 while (paddedlen) {
  if (!nmc->nmc_left) {
   error = nfsm_chain_new_mbuf(nmc, paddedlen);
   if (error)
    return (error);
  }
  tlen = MIN(nmc->nmc_left, paddedlen);
  if (tlen) {
   if (len) {
    if (tlen > len)
     tlen = len;
    bcopy(buf, nmc->nmc_ptr, tlen);
   } else {
    bzero(nmc->nmc_ptr, tlen);
   }
   nmc->nmc_ptr += tlen;
   nmc->nmc_left -= tlen;
   paddedlen -= tlen;
   if (len) {
    buf += tlen;
    len -= tlen;
   }
  }
 }
 return (0);
}
