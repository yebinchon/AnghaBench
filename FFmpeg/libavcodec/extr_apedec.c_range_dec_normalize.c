
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int range; int buffer; int low; } ;
struct TYPE_5__ {int error; TYPE_1__ rc; scalar_t__* ptr; scalar_t__* data_end; } ;
typedef TYPE_2__ APEContext ;


 int BOTTOM_VALUE ;

__attribute__((used)) static inline void range_dec_normalize(APEContext *ctx)
{
    while (ctx->rc.range <= BOTTOM_VALUE) {
        ctx->rc.buffer <<= 8;
        if(ctx->ptr < ctx->data_end) {
            ctx->rc.buffer += *ctx->ptr;
            ctx->ptr++;
        } else {
            ctx->error = 1;
        }
        ctx->rc.low = (ctx->rc.low << 8) | ((ctx->rc.buffer >> 1) & 0xFF);
        ctx->rc.range <<= 8;
    }
}
