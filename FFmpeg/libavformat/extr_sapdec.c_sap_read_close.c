
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct SAPState {int sdp; scalar_t__ ann_fd; scalar_t__ sdp_ctx; } ;
struct TYPE_3__ {struct SAPState* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int av_freep (int *) ;
 int avformat_close_input (scalar_t__*) ;
 int ff_network_close () ;
 int ffurl_close (scalar_t__) ;

__attribute__((used)) static int sap_read_close(AVFormatContext *s)
{
    struct SAPState *sap = s->priv_data;
    if (sap->sdp_ctx)
        avformat_close_input(&sap->sdp_ctx);
    if (sap->ann_fd)
        ffurl_close(sap->ann_fd);
    av_freep(&sap->sdp);
    ff_network_close();
    return 0;
}
