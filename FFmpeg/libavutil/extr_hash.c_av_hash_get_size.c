
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; } ;
struct TYPE_4__ {size_t type; } ;
typedef TYPE_1__ AVHashContext ;


 TYPE_2__* hashdesc ;

int av_hash_get_size(const AVHashContext *ctx)
{
    return hashdesc[ctx->type].size;
}
