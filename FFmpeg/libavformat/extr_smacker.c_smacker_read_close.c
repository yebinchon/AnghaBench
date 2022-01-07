
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int frm_flags; int frm_size; int * bufs; } ;
typedef TYPE_1__ SmackerContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int smacker_read_close(AVFormatContext *s)
{
    SmackerContext *smk = s->priv_data;
    int i;

    for(i = 0; i < 7; i++)
        av_freep(&smk->bufs[i]);
    av_freep(&smk->frm_size);
    av_freep(&smk->frm_flags);

    return 0;
}
