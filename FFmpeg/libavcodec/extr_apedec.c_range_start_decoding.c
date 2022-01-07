
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int buffer; int low; int range; } ;
struct TYPE_5__ {TYPE_1__ rc; int ptr; } ;
typedef TYPE_2__ APEContext ;


 int EXTRA_BITS ;
 int bytestream_get_byte (int *) ;

__attribute__((used)) static inline void range_start_decoding(APEContext *ctx)
{
    ctx->rc.buffer = bytestream_get_byte(&ctx->ptr);
    ctx->rc.low = ctx->rc.buffer >> (8 - EXTRA_BITS);
    ctx->rc.range = (uint32_t) 1 << EXTRA_BITS;
}
