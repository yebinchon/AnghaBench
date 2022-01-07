
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AVFormatContext {int metadata_header_padding; int nb_streams; int error_recognition; int flags; int pb; int metadata; TYPE_1__** streams; } ;
struct TYPE_2__ {int * priv_data; } ;
typedef TYPE_1__ AVStream ;
typedef int AVPacket ;


 int AVFMT_FLAG_BITEXACT ;
 int AV_EF_EXPLODE ;
 int av_clip_uintp2 (int,int) ;
 int av_packet_unref (int *) ;
 int flac_write_block_comment (int ,int *,int,int) ;
 int flac_write_block_padding (int ,int,int) ;
 int flac_write_picture (struct AVFormatContext*,int *) ;

__attribute__((used)) static int flac_finish_header(struct AVFormatContext *s)
{
    int i, ret, padding = s->metadata_header_padding;
    if (padding < 0)
        padding = 8192;


    padding = av_clip_uintp2(padding, 24);

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        AVPacket *pkt = st->priv_data;
        if (!pkt)
            continue;
        ret = flac_write_picture(s, pkt);
        av_packet_unref(pkt);
        if (ret < 0 && (s->error_recognition & AV_EF_EXPLODE))
            return ret;
    }

    ret = flac_write_block_comment(s->pb, &s->metadata, !padding,
                                   s->flags & AVFMT_FLAG_BITEXACT);
    if (ret)
        return ret;





    if (padding)
        flac_write_block_padding(s->pb, padding, 1);

    return 0;
}
