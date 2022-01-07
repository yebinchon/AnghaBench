
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hmac_hashctxt1; TYPE_1__* hmac_hash; } ;
struct TYPE_4__ {int (* hmac_hupdate ) (int ,unsigned char const*,unsigned int) ;} ;
typedef TYPE_2__ HMAC_context ;


 int stub1 (int ,unsigned char const*,unsigned int) ;

int Curl_HMAC_update(HMAC_context * ctxt,
                     const unsigned char *data,
                     unsigned int len)
{

  (*ctxt->hmac_hash->hmac_hupdate)(ctxt->hmac_hashctxt1, data, len);
  return 0;
}
