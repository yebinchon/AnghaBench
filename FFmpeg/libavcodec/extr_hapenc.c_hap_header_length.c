
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chunk_count; } ;
typedef TYPE_1__ HapContext ;


 int HAP_HDR_LONG ;
 scalar_t__ HAP_HDR_SHORT ;
 scalar_t__ hap_decode_instructions_length (TYPE_1__*) ;

__attribute__((used)) static int hap_header_length(HapContext *ctx)
{

    int length = HAP_HDR_LONG;

    if (ctx->chunk_count > 1) {

        length += HAP_HDR_SHORT + hap_decode_instructions_length(ctx);
    }

    return length;
}
