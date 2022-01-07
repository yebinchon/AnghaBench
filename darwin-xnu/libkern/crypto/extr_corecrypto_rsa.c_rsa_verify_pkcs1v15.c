
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int key; } ;
typedef TYPE_1__ rsa_pub_ctx ;
struct TYPE_5__ {int (* ccrsa_verify_pkcs1v15_fn ) (int ,int const*,size_t,int const*,size_t,int const*,int*) ;} ;


 TYPE_3__* g_crypto_funcs ;
 int stub1 (int ,int const*,size_t,int const*,size_t,int const*,int*) ;

int rsa_verify_pkcs1v15(rsa_pub_ctx *pub, const uint8_t *oid,
                          size_t digest_len, const uint8_t *digest,
                          size_t sig_len, const uint8_t *sig,
                          bool *valid) {
 return g_crypto_funcs->ccrsa_verify_pkcs1v15_fn(pub->key,oid,
   digest_len,digest,
   sig_len,sig,valid);
}
