
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ num_ch; } ;
struct TYPE_5__ {TYPE_2__* group; } ;
typedef TYPE_1__ FFPsyContext ;
typedef TYPE_2__ FFPsyChannelGroup ;



FFPsyChannelGroup *ff_psy_find_group(FFPsyContext *ctx, int channel)
{
    int i = 0, ch = 0;

    while (ch <= channel)
        ch += ctx->group[i++].num_ch;

    return &ctx->group[i-1];
}
