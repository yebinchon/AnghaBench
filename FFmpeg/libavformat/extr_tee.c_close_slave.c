
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* avf; int * bsfs; int * stream_map; scalar_t__ header_written; } ;
typedef TYPE_1__ TeeSlave ;
struct TYPE_8__ {unsigned int nb_streams; int pb; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_bsf_free (int *) ;
 int av_freep (int **) ;
 int av_write_trailer (TYPE_2__*) ;
 int avformat_free_context (TYPE_2__*) ;
 int ff_format_io_close (TYPE_2__*,int *) ;

__attribute__((used)) static int close_slave(TeeSlave *tee_slave)
{
    AVFormatContext *avf;
    unsigned i;
    int ret = 0;

    avf = tee_slave->avf;
    if (!avf)
        return 0;

    if (tee_slave->header_written)
        ret = av_write_trailer(avf);

    if (tee_slave->bsfs) {
        for (i = 0; i < avf->nb_streams; ++i)
            av_bsf_free(&tee_slave->bsfs[i]);
    }
    av_freep(&tee_slave->stream_map);
    av_freep(&tee_slave->bsfs);

    ff_format_io_close(avf, &avf->pb);
    avformat_free_context(avf);
    tee_slave->avf = ((void*)0);
    return ret;
}
