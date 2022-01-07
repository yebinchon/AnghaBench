
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ apetag; } ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ADTSContext ;


 int ff_ape_write_tag (TYPE_1__*) ;

__attribute__((used)) static int adts_write_trailer(AVFormatContext *s)
{
    ADTSContext *adts = s->priv_data;

    if (adts->apetag)
        ff_ape_write_tag(s);

    return 0;
}
