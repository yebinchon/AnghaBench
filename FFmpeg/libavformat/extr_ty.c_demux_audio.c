
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_13__ {int subrec_type; int rec_size; } ;
typedef TYPE_1__ TyRecHdr ;
struct TYPE_16__ {TYPE_2__* priv_data; } ;
struct TYPE_15__ {scalar_t__ pts; int stream_index; scalar_t__ size; int * data; } ;
struct TYPE_14__ {scalar_t__ pes_buf_cnt; int pes_length; scalar_t__ audio_type; scalar_t__ last_audio_pts; int pts_offset; scalar_t__ tivo_series; scalar_t__ ac3_pkt_size; scalar_t__ first_audio_pts; scalar_t__ cur_chunk_pos; scalar_t__ chunk; int * pes_buffer; } ;
typedef TYPE_2__ TYDemuxContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ AC3_PKT_LENGTH ;
 int AVERROR (int ) ;
 scalar_t__ AV_NOPTS_VALUE ;
 int ENOMEM ;
 size_t SA_PTS_OFFSET ;
 scalar_t__ TIVO_AUDIO_AC3 ;
 scalar_t__ TIVO_AUDIO_MPEG ;
 scalar_t__ TIVO_SERIES2 ;
 scalar_t__ av_new_packet (TYPE_3__*,int const) ;
 int av_packet_unref (TYPE_3__*) ;
 int check_sync_pes (TYPE_4__*,TYPE_3__*,int,int const) ;
 int ff_dlog (TYPE_4__*,char*) ;
 void* ff_parse_pes_pts (int *) ;
 int find_es_header (int ,int *,int) ;
 int memcpy (int *,scalar_t__,int const) ;
 int ty_AC3AudioPacket ;
 int ty_MPEGAudioPacket ;

__attribute__((used)) static int demux_audio(AVFormatContext *s, TyRecHdr *rec_hdr, AVPacket *pkt)
{
    TYDemuxContext *ty = s->priv_data;
    const int subrec_type = rec_hdr->subrec_type;
    const int64_t rec_size = rec_hdr->rec_size;
    int es_offset1;

    if (subrec_type == 2) {
        int need = 0;





        if (ty->pes_buf_cnt > 0) {
            need = ty->pes_length - ty->pes_buf_cnt;

            ff_dlog(s, "continuing PES header\n");

            if (need >= rec_size) {

                memcpy(ty->pes_buffer + ty->pes_buf_cnt, ty->chunk + ty->cur_chunk_pos, rec_size);
                ty->cur_chunk_pos += rec_size;
                ty->pes_buf_cnt += rec_size;
                return 0;
            }


            memcpy(ty->pes_buffer + ty->pes_buf_cnt, ty->chunk + ty->cur_chunk_pos, need);
            ty->cur_chunk_pos += need;

            if (ty->audio_type == TIVO_AUDIO_MPEG) {
                es_offset1 = find_es_header(ty_MPEGAudioPacket,
                        ty->pes_buffer, 5);
            } else {
                es_offset1 = find_es_header(ty_AC3AudioPacket,
                        ty->pes_buffer, 5);
            }
            if (es_offset1 < 0) {
                ff_dlog(s, "Can't find audio PES header in packet.\n");
            } else {
                ty->last_audio_pts = ff_parse_pes_pts(
                    &ty->pes_buffer[es_offset1 + ty->pts_offset]);
                pkt->pts = ty->last_audio_pts;
            }
            ty->pes_buf_cnt = 0;

        }
        if (av_new_packet(pkt, rec_size - need) < 0)
            return AVERROR(ENOMEM);
        memcpy(pkt->data, ty->chunk + ty->cur_chunk_pos, rec_size - need);
        ty->cur_chunk_pos += rec_size - need;
        pkt->stream_index = 1;







        if (ty->audio_type == TIVO_AUDIO_AC3 &&
                ty->tivo_series == TIVO_SERIES2) {
            if (ty->ac3_pkt_size + pkt->size > AC3_PKT_LENGTH) {
                pkt->size -= 2;
                ty->ac3_pkt_size = 0;
            } else {
                ty->ac3_pkt_size += pkt->size;
            }
        }
    } else if (subrec_type == 0x03) {
        if (av_new_packet(pkt, rec_size) < 0)
            return AVERROR(ENOMEM);
        memcpy(pkt->data, ty->chunk + ty->cur_chunk_pos, rec_size);
        ty->cur_chunk_pos += rec_size;
        pkt->stream_index = 1;


        es_offset1 = find_es_header(ty_MPEGAudioPacket, pkt->data, 5);



        if ((es_offset1 == 0) && (rec_size == 16)) {
            ty->last_audio_pts = ff_parse_pes_pts(&pkt->data[SA_PTS_OFFSET]);
            if (ty->first_audio_pts == AV_NOPTS_VALUE)
                ty->first_audio_pts = ty->last_audio_pts;
            av_packet_unref(pkt);
            return 0;
        }




        if (check_sync_pes(s, pkt, es_offset1, rec_size) == -1) {


            av_packet_unref(pkt);
            return 0;
        }
    } else if (subrec_type == 0x04) {


        if (av_new_packet(pkt, rec_size) < 0)
            return AVERROR(ENOMEM);
        memcpy(pkt->data, ty->chunk + ty->cur_chunk_pos, rec_size);
        ty->cur_chunk_pos += rec_size;
        pkt->stream_index = 1;
        pkt->pts = ty->last_audio_pts;
    } else if (subrec_type == 0x09) {
        if (av_new_packet(pkt, rec_size) < 0)
            return AVERROR(ENOMEM);
        memcpy(pkt->data, ty->chunk + ty->cur_chunk_pos, rec_size);
        ty->cur_chunk_pos += rec_size ;
        pkt->stream_index = 1;



        es_offset1 = find_es_header(ty_AC3AudioPacket, pkt->data, 5);


        if (check_sync_pes(s, pkt, es_offset1, rec_size) == -1) {

            av_packet_unref(pkt);
            return 0;
        }

        if (ty->tivo_series == TIVO_SERIES2) {
            if (pkt->size > AC3_PKT_LENGTH) {
                pkt->size -= 2;
                ty->ac3_pkt_size = 0;
            } else {
                ty->ac3_pkt_size = pkt->size;
            }
        }
    } else {

        ty->cur_chunk_pos += rec_size;
        return 0;
    }

    return 1;
}
