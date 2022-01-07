
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_12__ {TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int data; } ;
struct TYPE_10__ {scalar_t__ last_sector; int drive; int paranoia; } ;
struct TYPE_9__ {scalar_t__ cur_dts; } ;
typedef TYPE_2__ CDIOContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int CDIO_CD_FRAMESIZE_RAW ;
 int av_log (TYPE_4__*,int ,char*,char*) ;
 int av_new_packet (TYPE_3__*,int ) ;
 char* cdio_cddap_errors (int ) ;
 char* cdio_cddap_messages (int ) ;
 int * cdio_paranoia_read (int ,int *) ;
 int free (char*) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int read_packet(AVFormatContext *ctx, AVPacket *pkt)
{
    CDIOContext *s = ctx->priv_data;
    int ret;
    uint16_t *buf;
    char *err = ((void*)0);

    if (ctx->streams[0]->cur_dts > s->last_sector)
        return AVERROR_EOF;

    buf = cdio_paranoia_read(s->paranoia, ((void*)0));
    if (!buf)
        return AVERROR_EOF;

    if (err = cdio_cddap_errors(s->drive)) {
        av_log(ctx, AV_LOG_ERROR, "%s\n", err);
        free(err);
        err = ((void*)0);
    }
    if (err = cdio_cddap_messages(s->drive)) {
        av_log(ctx, AV_LOG_VERBOSE, "%s\n", err);
        free(err);
        err = ((void*)0);
    }

    if ((ret = av_new_packet(pkt, CDIO_CD_FRAMESIZE_RAW)) < 0)
        return ret;
    memcpy(pkt->data, buf, CDIO_CD_FRAMESIZE_RAW);
    return 0;
}
