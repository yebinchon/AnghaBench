
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int rec_hdrs; int seq_table; } ;
typedef TYPE_1__ TYDemuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int ty_read_close(AVFormatContext *s)
{
    TYDemuxContext *ty = s->priv_data;

    av_freep(&ty->seq_table);
    av_freep(&ty->rec_hdrs);

    return 0;
}
