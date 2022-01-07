
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hmac_hashctxt2; scalar_t__ hmac_hashctxt1; TYPE_1__* hmac_hash; } ;
struct TYPE_4__ {int hmac_ctxtsize; int (* hmac_hfinal ) (unsigned char*,scalar_t__) ;int hmac_resultlen; int (* hmac_hupdate ) (scalar_t__,unsigned char*,int ) ;} ;
typedef TYPE_1__ HMAC_params ;
typedef TYPE_2__ HMAC_context ;


 int free (char*) ;
 int stub1 (unsigned char*,scalar_t__) ;
 int stub2 (scalar_t__,unsigned char*,int ) ;
 int stub3 (unsigned char*,scalar_t__) ;

int Curl_HMAC_final(HMAC_context *ctxt, unsigned char *result)
{
  const HMAC_params * hashparams = ctxt->hmac_hash;




  if(!result)
    result = (unsigned char *) ctxt->hmac_hashctxt2 +
     ctxt->hmac_hash->hmac_ctxtsize;

  (*hashparams->hmac_hfinal)(result, ctxt->hmac_hashctxt1);
  (*hashparams->hmac_hupdate)(ctxt->hmac_hashctxt2,
   result, hashparams->hmac_resultlen);
  (*hashparams->hmac_hfinal)(result, ctxt->hmac_hashctxt2);
  free((char *) ctxt);
  return 0;
}
