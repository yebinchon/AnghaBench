
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccdigest_info {int dummy; } ;
struct TYPE_2__ {int (* ccdigest_update_fn ) (struct ccdigest_info const*,int ,unsigned int,void const*) ;struct ccdigest_info* ccmd5_di; } ;
typedef int MD5_CTX ;


 int DiToMD5 (struct ccdigest_info const*,int ,int *) ;
 int MD5ToDi (struct ccdigest_info const*,int *,int ) ;
 int ccdigest_di_decl (struct ccdigest_info const*,int ) ;
 int di_ctx ;
 TYPE_1__* g_crypto_funcs ;
 int stub1 (struct ccdigest_info const*,int ,unsigned int,void const*) ;

void MD5Update(MD5_CTX *ctx, const void *data, unsigned int len)
{
 const struct ccdigest_info *di=g_crypto_funcs->ccmd5_di;
 ccdigest_di_decl(di, di_ctx);

 MD5ToDi(di, ctx, di_ctx);
 g_crypto_funcs->ccdigest_update_fn(di, di_ctx, len, data);
 DiToMD5(di, di_ctx, ctx);
}
