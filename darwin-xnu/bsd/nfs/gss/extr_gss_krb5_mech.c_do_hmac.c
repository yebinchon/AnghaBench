
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* hmac_walker_ctx_t ;
struct TYPE_2__ {int hmac_ctx; int di; } ;


 int cchmac_update (int ,int ,int ,int *) ;

int
do_hmac(void *walker, uint8_t *data, uint32_t len)
{
 hmac_walker_ctx_t wctx = (hmac_walker_ctx_t)walker;

 cchmac_update(wctx->di, wctx->hmac_ctx, len, data);

 return (0);
}
