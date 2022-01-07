
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct crypt_walker_ctx {int length; int iv; int crypt_ctx; TYPE_1__* ccmode; } ;
typedef struct crypt_walker_ctx* crypt_walker_ctx_t ;
struct TYPE_2__ {int block_size; } ;


 int assert (int) ;
 int cccbc_update (TYPE_1__*,int ,int ,int,int *,int *) ;

int
do_crypt(void *walker, uint8_t *data, uint32_t len)
{
 struct crypt_walker_ctx *wctx = (crypt_walker_ctx_t)walker;
 uint32_t nblocks;

 nblocks = len / wctx->ccmode->block_size;
 assert(len % wctx->ccmode->block_size == 0);
 cccbc_update(wctx->ccmode, wctx->crypt_ctx, wctx->iv, nblocks, data, data);
 wctx->length += len;

 return (0);
}
