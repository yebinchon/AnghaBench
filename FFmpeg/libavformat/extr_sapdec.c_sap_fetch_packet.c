
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct pollfd {int member_0; int member_1; int revents; int member_2; } ;
struct SAPState {int eof; scalar_t__ hash; TYPE_7__* sdp_ctx; int ann_fd; } ;
typedef int recvbuf ;
struct TYPE_11__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_10__ {int ctx_flags; int nb_streams; struct SAPState* priv_data; } ;
struct TYPE_9__ {int id; int time_base; int codecpar; } ;
struct TYPE_8__ {int time_base; int codecpar; } ;
typedef TYPE_2__ AVStream ;
typedef int AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVFMTCTX_NOHEADER ;
 scalar_t__ AV_RB16 (int*) ;
 int ENOMEM ;
 int POLLIN ;
 int RTP_MAX_PACKET_LENGTH ;
 int av_packet_unref (int *) ;
 int av_read_frame (TYPE_7__*,int *) ;
 int avcodec_parameters_copy (int ,int ) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int ffurl_get_file_handle (int ) ;
 int ffurl_read (int ,int*,int) ;
 int poll (struct pollfd*,int,int ) ;

__attribute__((used)) static int sap_fetch_packet(AVFormatContext *s, AVPacket *pkt)
{
    struct SAPState *sap = s->priv_data;
    int fd = ffurl_get_file_handle(sap->ann_fd);
    int n, ret;
    struct pollfd p = {fd, POLLIN, 0};
    uint8_t recvbuf[RTP_MAX_PACKET_LENGTH];

    if (sap->eof)
        return AVERROR_EOF;

    while (1) {
        n = poll(&p, 1, 0);
        if (n <= 0 || !(p.revents & POLLIN))
            break;
        ret = ffurl_read(sap->ann_fd, recvbuf, sizeof(recvbuf));
        if (ret >= 8) {
            uint16_t hash = AV_RB16(&recvbuf[2]);

            if (recvbuf[0] & 0x04 && hash == sap->hash) {

                sap->eof = 1;
                return AVERROR_EOF;
            }
        }
    }
    ret = av_read_frame(sap->sdp_ctx, pkt);
    if (ret < 0)
        return ret;
    if (s->ctx_flags & AVFMTCTX_NOHEADER) {
        while (sap->sdp_ctx->nb_streams > s->nb_streams) {
            int i = s->nb_streams;
            AVStream *st = avformat_new_stream(s, ((void*)0));
            if (!st) {
                av_packet_unref(pkt);
                return AVERROR(ENOMEM);
            }
            st->id = i;
            avcodec_parameters_copy(st->codecpar, sap->sdp_ctx->streams[i]->codecpar);
            st->time_base = sap->sdp_ctx->streams[i]->time_base;
        }
    }
    return ret;
}
