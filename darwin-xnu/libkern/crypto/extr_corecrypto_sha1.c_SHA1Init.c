
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccdigest_info {int dummy; } ;
struct TYPE_2__ {int (* ccdigest_init_fn ) (struct ccdigest_info const*,int ) ;struct ccdigest_info* ccsha1_di; } ;
typedef int SHA1_CTX ;


 int DiToSHA1 (struct ccdigest_info const*,int ,int *) ;
 int ccdigest_di_decl (struct ccdigest_info const*,int ) ;
 int di_ctx ;
 TYPE_1__* g_crypto_funcs ;
 int stub1 (struct ccdigest_info const*,int ) ;

void SHA1Init(SHA1_CTX *ctx)
{
 const struct ccdigest_info *di=g_crypto_funcs->ccsha1_di;
 ccdigest_di_decl(di, di_ctx);

 g_crypto_funcs->ccdigest_init_fn(di, di_ctx);

 DiToSHA1(di, di_ctx, ctx);
}
