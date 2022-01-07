
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct nfsm_chain {void* nmc_mcur; scalar_t__ nmc_left; int * nmc_ptr; } ;
typedef void* mbuf_t ;
typedef int * caddr_t ;


 int EBADRPC ;
 int EOVERFLOW ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int bcopy (int *,int *,scalar_t__) ;
 void* mbuf_data (void*) ;
 int mbuf_free (void*) ;
 scalar_t__ mbuf_len (void*) ;
 scalar_t__ mbuf_maxlen (void*) ;
 void* mbuf_next (void*) ;
 int mbuf_setdata (void*,int *,scalar_t__) ;
 int mbuf_setlen (void*,scalar_t__) ;
 int mbuf_setnext (void*,void*) ;
 scalar_t__ mbuf_trailingspace (void*) ;
 int nfsm_chain_advance (struct nfsm_chain*,scalar_t__) ;
 int nfsm_mbuf_get (int,void**,scalar_t__) ;
 scalar_t__ nfsm_rndup (scalar_t__) ;

int
nfsm_chain_get_opaque_pointer_f(struct nfsm_chain *nmc, uint32_t len, u_char **pptr)
{
 mbuf_t mbcur, mb;
 uint32_t left, need, mblen, cplen, padlen;
 u_char *ptr;
 int error = 0;


 while (nmc->nmc_mcur && (nmc->nmc_left == 0)) {
  mb = mbuf_next(nmc->nmc_mcur);
  nmc->nmc_mcur = mb;
  if (!mb)
   break;
  nmc->nmc_ptr = mbuf_data(mb);
  nmc->nmc_left = mbuf_len(mb);
 }

 if (!nmc->nmc_mcur)
  return (EBADRPC);


 if (nmc->nmc_left >= len) {

  *pptr = (u_char*)nmc->nmc_ptr;
  error = nfsm_chain_advance(nmc, nfsm_rndup(len));
  return (error);
 }

 padlen = nfsm_rndup(len) - len;


 mbcur = nmc->nmc_mcur;
 left = nmc->nmc_left;
 need = len - left;

 if (need > mbuf_trailingspace(mbcur)) {




  nfsm_mbuf_get(error, &mb, len);
  if (error)
   return (error);

  if (mbuf_maxlen(mb) < len) {
   mbuf_free(mb);
   return (EOVERFLOW);
  }


  *pptr = ptr = mbuf_data(mb);


  bcopy(nmc->nmc_ptr, ptr, left);
  ptr += left;
  mbuf_setlen(mb, left);


  error = mbuf_setnext(mb, mbuf_next(mbcur));
  if (!error)
   error = mbuf_setnext(mbcur, mb);
  if (error) {
   mbuf_free(mb);
   return (error);
  }


  mbuf_setlen(mbcur, mbuf_len(mbcur) - left);





  nmc->nmc_mcur = mbcur = mb;
  nmc->nmc_left = 0;
  nmc->nmc_ptr = (caddr_t)ptr;
 } else {



  *pptr = (u_char*)nmc->nmc_ptr;





  nmc->nmc_ptr += left;
  nmc->nmc_left = 0;
 }







 mbuf_setlen(mbcur, mbuf_len(mbcur) + need);


 mb = mbuf_next(mbcur);

 while (need && mb) {

  ptr = mbuf_data(mb);
  mblen = mbuf_len(mb);
  cplen = MIN(mblen, need);
  if (cplen) {
   bcopy(ptr, nmc->nmc_ptr, cplen);




   error = mbuf_setdata(mb, ptr + cplen, mblen - cplen);
   if (error) {
    mbuf_setlen(mbcur, mbuf_len(mbcur) - need);
    return (error);
   }

   nmc->nmc_ptr += cplen;
   need -= cplen;
  }

  if (need)
   mb = mbuf_next(mb);
 }


 if (need) {
  mbuf_setlen(mbcur, mbuf_len(mbcur) - need);
  return (EBADRPC);
 }







 nmc->nmc_mcur = mb;
 nmc->nmc_ptr = mbuf_data(mb);
 nmc->nmc_left = mbuf_len(mb);


 if (padlen)
  error = nfsm_chain_advance(nmc, padlen);

 return (error);
}
