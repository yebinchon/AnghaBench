
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int resync_pos; scalar_t__ done; } ;
typedef TYPE_1__ MatroskaDemuxContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EOF ;
 int avio_tell (int ) ;
 scalar_t__ matroska_deliver_packet (TYPE_1__*,int *) ;
 scalar_t__ matroska_parse_cluster (TYPE_1__*) ;
 int matroska_resync (TYPE_1__*,int) ;

__attribute__((used)) static int matroska_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    MatroskaDemuxContext *matroska = s->priv_data;
    int ret = 0;

    if (matroska->resync_pos == -1) {

        matroska->resync_pos = avio_tell(s->pb);
    }

    while (matroska_deliver_packet(matroska, pkt)) {
        if (matroska->done)
            return (ret < 0) ? ret : AVERROR_EOF;
        if (matroska_parse_cluster(matroska) < 0 && !matroska->done)
            ret = matroska_resync(matroska, matroska->resync_pos);
    }

    return 0;
}
