
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccdigest_info {int dummy; } ;
struct TYPE_2__ {int (* ccdigest_update_fn ) (struct ccdigest_info const*,int ,size_t,void const*) ;struct ccdigest_info* ccsha1_di; } ;
typedef int SHA1_CTX ;


 int DiToSHA1 (struct ccdigest_info const*,int ,int *) ;
 int SHA1ToDi (struct ccdigest_info const*,int *,int ) ;
 int ccdigest_di_decl (struct ccdigest_info const*,int ) ;
 int di_ctx ;
 TYPE_1__* g_crypto_funcs ;
 int stub1 (struct ccdigest_info const*,int ,size_t,void const*) ;

void SHA1Update(SHA1_CTX *ctx, const void *data, size_t len)
{
 const struct ccdigest_info *di=g_crypto_funcs->ccsha1_di;
 ccdigest_di_decl(di, di_ctx);

 SHA1ToDi(di, ctx, di_ctx);
 g_crypto_funcs->ccdigest_update_fn(di, di_ctx, len, data);
 DiToSHA1(di, di_ctx, ctx);
}
