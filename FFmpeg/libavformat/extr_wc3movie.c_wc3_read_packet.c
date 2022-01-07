
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int text ;
struct TYPE_10__ {int pts; int stream_index; int size; int * data; } ;
struct TYPE_9__ {int pts; int audio_stream_index; int video_stream_index; TYPE_2__ vpkt; } ;
typedef TYPE_1__ Wc3DemuxContext ;
struct TYPE_11__ {int * pb; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;



 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;

 int EIO ;
 int SEEK_CUR ;



 int av_append_packet (int *,TYPE_2__*,int) ;
 unsigned char* av_fourcc2str (unsigned int) ;
 int av_get_packet (int *,TYPE_2__*,unsigned int) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 unsigned int av_strnlen (unsigned char*,unsigned int) ;
 scalar_t__ avio_feof (int *) ;
 int avio_rb32 (int *) ;
 int avio_read (int *,unsigned char*,unsigned int) ;
 unsigned int avio_rl32 (int *) ;
 int avio_seek (int *,int,int ) ;

__attribute__((used)) static int wc3_read_packet(AVFormatContext *s,
                           AVPacket *pkt)
{
    Wc3DemuxContext *wc3 = s->priv_data;
    AVIOContext *pb = s->pb;
    unsigned int fourcc_tag;
    unsigned int size;
    int packet_read = 0;
    int ret = 0;
    unsigned char text[1024];

    while (!packet_read) {

        fourcc_tag = avio_rl32(pb);

        size = (avio_rb32(pb) + 1) & (~1);
        if (avio_feof(pb))
            return AVERROR(EIO);

        switch (fourcc_tag) {

        case 131:

            break;

        case 130:

            avio_seek(pb, -8, SEEK_CUR);
            av_append_packet(pb, &wc3->vpkt, 8 + 4);
            break;

        case 128:

            avio_seek(pb, -8, SEEK_CUR);
            ret= av_append_packet(pb, &wc3->vpkt, 8 + size);

            if (wc3->vpkt.size > 0)
                ret = 0;
            *pkt = wc3->vpkt;
            wc3->vpkt.data = ((void*)0); wc3->vpkt.size = 0;
            pkt->stream_index = wc3->video_stream_index;
            pkt->pts = wc3->pts;
            packet_read = 1;
            break;

        case 129:

            if ((unsigned)size > sizeof(text) || (ret = avio_read(pb, text, size)) != size)
                ret = AVERROR(EIO);
            else {
                int i = 0;
                av_log (s, AV_LOG_DEBUG, "Subtitle time!\n");
                if (i >= size || av_strnlen(&text[i + 1], size - i - 1) >= size - i - 1)
                    return AVERROR_INVALIDDATA;
                av_log (s, AV_LOG_DEBUG, "  inglish: %s\n", &text[i + 1]);
                i += text[i] + 1;
                if (i >= size || av_strnlen(&text[i + 1], size - i - 1) >= size - i - 1)
                    return AVERROR_INVALIDDATA;
                av_log (s, AV_LOG_DEBUG, "  doytsch: %s\n", &text[i + 1]);
                i += text[i] + 1;
                if (i >= size || av_strnlen(&text[i + 1], size - i - 1) >= size - i - 1)
                    return AVERROR_INVALIDDATA;
                av_log (s, AV_LOG_DEBUG, "  fronsay: %s\n", &text[i + 1]);
            }
            break;

        case 132:

            ret= av_get_packet(pb, pkt, size);
            pkt->stream_index = wc3->audio_stream_index;
            pkt->pts = wc3->pts;


            wc3->pts++;

            packet_read = 1;
            break;

        default:
            av_log(s, AV_LOG_ERROR, "unrecognized WC3 chunk: %s\n",
                   av_fourcc2str(fourcc_tag));
            ret = AVERROR_INVALIDDATA;
            packet_read = 1;
            break;
        }
    }

    return ret;
}
