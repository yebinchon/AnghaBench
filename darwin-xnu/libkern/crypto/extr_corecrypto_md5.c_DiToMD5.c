
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ccdigest_info {int state_size; int block_size; } ;
struct ccdigest_ctx {int dummy; } ;
struct TYPE_4__ {int state; int buffer; } ;
typedef TYPE_1__ MD5_CTX ;


 int ccdigest_data (struct ccdigest_info const*,struct ccdigest_ctx*) ;
 int ccdigest_nbits (struct ccdigest_info const*,struct ccdigest_ctx*) ;
 scalar_t__ ccdigest_num (struct ccdigest_info const*,struct ccdigest_ctx*) ;
 int ccdigest_state_ccn (struct ccdigest_info const*,struct ccdigest_ctx*) ;
 int memcpy (int ,int ,int ) ;
 int setCount (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void DiToMD5(const struct ccdigest_info *di, struct ccdigest_ctx *di_ctx, MD5_CTX *md5_ctx)
{
 setCount(md5_ctx, ccdigest_nbits(di, di_ctx)/8+ccdigest_num(di, di_ctx));
 memcpy(md5_ctx->buffer, ccdigest_data(di, di_ctx), di->block_size);
 memcpy(md5_ctx->state, ccdigest_state_ccn(di, di_ctx), di->state_size);
}
