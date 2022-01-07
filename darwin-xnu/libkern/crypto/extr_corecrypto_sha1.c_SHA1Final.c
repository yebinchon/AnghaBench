
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccdigest_info {int dummy; } ;
struct TYPE_2__ {struct ccdigest_info* ccsha1_di; } ;
typedef int SHA1_CTX ;


 int SHA1ToDi (struct ccdigest_info const*,int *,int ) ;
 int ccdigest_di_decl (struct ccdigest_info const*,int ) ;
 int ccdigest_final (struct ccdigest_info const*,int ,void*) ;
 int di_ctx ;
 TYPE_1__* g_crypto_funcs ;

void SHA1Final(void *digest, SHA1_CTX *ctx)
{
 const struct ccdigest_info *di=g_crypto_funcs->ccsha1_di;
 ccdigest_di_decl(di, di_ctx);

 SHA1ToDi(di, ctx, di_ctx);
 ccdigest_final(di, di_ctx, digest);
}
