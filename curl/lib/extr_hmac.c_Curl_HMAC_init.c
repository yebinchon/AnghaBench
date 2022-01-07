
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* hmac_hashctxt2; void* hmac_hashctxt1; TYPE_1__ const* hmac_hash; } ;
struct TYPE_6__ {int hmac_ctxtsize; int hmac_resultlen; unsigned int hmac_maxkeylen; int (* hmac_hupdate ) (void*,int*,int) ;int (* hmac_hinit ) (void*) ;int (* hmac_hfinal ) (unsigned char*,void*) ;} ;
typedef TYPE_1__ HMAC_params ;
typedef TYPE_2__ HMAC_context ;


 unsigned char const hmac_ipad ;
 int hmac_opad ;
 TYPE_2__* malloc (size_t) ;
 int stub1 (void*) ;
 int stub2 (void*,unsigned char const*,unsigned int) ;
 int stub3 (unsigned char*,void*) ;
 int stub4 (void*) ;
 int stub5 (void*) ;
 int stub6 (void*,unsigned char*,int) ;
 int stub7 (void*,unsigned char*,int) ;
 int stub8 (void*,unsigned char const*,int) ;
 int stub9 (void*,int*,int) ;

HMAC_context *
Curl_HMAC_init(const HMAC_params * hashparams,
               const unsigned char *key,
               unsigned int keylen)
{
  size_t i;
  HMAC_context *ctxt;
  unsigned char *hkey;
  unsigned char b;


  i = sizeof(*ctxt) + 2 * hashparams->hmac_ctxtsize +
    hashparams->hmac_resultlen;
  ctxt = malloc(i);

  if(!ctxt)
    return ctxt;

  ctxt->hmac_hash = hashparams;
  ctxt->hmac_hashctxt1 = (void *) (ctxt + 1);
  ctxt->hmac_hashctxt2 = (void *) ((char *) ctxt->hmac_hashctxt1 +
      hashparams->hmac_ctxtsize);


  if(keylen > hashparams->hmac_maxkeylen) {
    (*hashparams->hmac_hinit)(ctxt->hmac_hashctxt1);
    (*hashparams->hmac_hupdate)(ctxt->hmac_hashctxt1, key, keylen);
    hkey = (unsigned char *) ctxt->hmac_hashctxt2 + hashparams->hmac_ctxtsize;
    (*hashparams->hmac_hfinal)(hkey, ctxt->hmac_hashctxt1);
    key = hkey;
    keylen = hashparams->hmac_resultlen;
  }


  (*hashparams->hmac_hinit)(ctxt->hmac_hashctxt1);
  (*hashparams->hmac_hinit)(ctxt->hmac_hashctxt2);

  for(i = 0; i < keylen; i++) {
    b = (unsigned char)(*key ^ hmac_ipad);
    (*hashparams->hmac_hupdate)(ctxt->hmac_hashctxt1, &b, 1);
    b = (unsigned char)(*key++ ^ hmac_opad);
    (*hashparams->hmac_hupdate)(ctxt->hmac_hashctxt2, &b, 1);
  }

  for(; i < hashparams->hmac_maxkeylen; i++) {
    (*hashparams->hmac_hupdate)(ctxt->hmac_hashctxt1, &hmac_ipad, 1);
    (*hashparams->hmac_hupdate)(ctxt->hmac_hashctxt2, &hmac_opad, 1);
  }


  return ctxt;
}
