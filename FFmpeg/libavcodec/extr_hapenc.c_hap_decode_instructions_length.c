
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chunk_count; } ;
typedef TYPE_1__ HapContext ;



__attribute__((used)) static int hap_decode_instructions_length(HapContext *ctx)
{




    return (5 * ctx->chunk_count) + 8;
}
