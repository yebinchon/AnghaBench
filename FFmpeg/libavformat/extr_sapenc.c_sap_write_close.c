
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct SAPState {int* ann; scalar_t__ ann_fd; int ann_size; scalar_t__ last_time; } ;
struct TYPE_7__ {int nb_streams; TYPE_1__** streams; int pb; struct SAPState* priv_data; } ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int**) ;
 int av_write_trailer (TYPE_2__*) ;
 int avformat_free_context (TYPE_2__*) ;
 int avio_closep (int *) ;
 int ff_network_close () ;
 int ffurl_close (scalar_t__) ;
 int ffurl_write (scalar_t__,int*,int ) ;

__attribute__((used)) static int sap_write_close(AVFormatContext *s)
{
    struct SAPState *sap = s->priv_data;
    int i;

    for (i = 0; i < s->nb_streams; i++) {
        AVFormatContext *rtpctx = s->streams[i]->priv_data;
        if (!rtpctx)
            continue;
        av_write_trailer(rtpctx);
        avio_closep(&rtpctx->pb);
        avformat_free_context(rtpctx);
        s->streams[i]->priv_data = ((void*)0);
    }

    if (sap->last_time && sap->ann && sap->ann_fd) {
        sap->ann[0] |= 4;
        ffurl_write(sap->ann_fd, sap->ann, sap->ann_size);
    }

    av_freep(&sap->ann);
    if (sap->ann_fd)
        ffurl_close(sap->ann_fd);
    ff_network_close();
    return 0;
}
