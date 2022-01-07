
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
typedef int data ;
struct TYPE_13__ {scalar_t__ codec_id; scalar_t__ codec_type; int codec_tag; int extradata_size; int extradata; } ;
struct TYPE_12__ {TYPE_2__* priv_data; int * pb; } ;
struct TYPE_11__ {int flags; TYPE_1__* audio_par; } ;
struct TYPE_10__ {int channels; scalar_t__ sample_rate; int profile; } ;
typedef int PutBitContext ;
typedef TYPE_2__ FLVContext ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AV_CODEC_ID_AAC ;
 scalar_t__ AV_CODEC_ID_H264 ;
 scalar_t__ AV_CODEC_ID_MPEG4 ;
 int AV_LOG_WARNING ;
 int FLV_AAC_SEQ_HEADER_DETECT ;
 int FLV_FRAME_KEY ;
 int FLV_TAG_TYPE_AUDIO ;
 int FLV_TAG_TYPE_VIDEO ;
 int SEEK_CUR ;
 int av_log (TYPE_3__*,int ,char*,int,int) ;
 int avio_seek (int *,int,int ) ;
 int avio_skip (int *,int) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int ,int ) ;
 int ff_isom_write_avcc (int *,int ,int ) ;
 int flush_put_bits (int *) ;
 int get_audio_flags (TYPE_3__*,TYPE_4__*) ;
 int init_put_bits (int *,int*,int) ;
 scalar_t__* mpeg4audio_sample_rates ;
 int put_bits (int *,int,int) ;
 int put_timestamp (int *,int) ;

__attribute__((used)) static void flv_write_codec_header(AVFormatContext* s, AVCodecParameters* par, int64_t ts) {
    int64_t data_size;
    AVIOContext *pb = s->pb;
    FLVContext *flv = s->priv_data;

    if (par->codec_id == AV_CODEC_ID_AAC || par->codec_id == AV_CODEC_ID_H264
            || par->codec_id == AV_CODEC_ID_MPEG4) {
        int64_t pos;
        avio_w8(pb,
                par->codec_type == AVMEDIA_TYPE_VIDEO ?
                        FLV_TAG_TYPE_VIDEO : FLV_TAG_TYPE_AUDIO);
        avio_wb24(pb, 0);
        put_timestamp(pb, ts);
        avio_wb24(pb, 0);
        pos = avio_tell(pb);
        if (par->codec_id == AV_CODEC_ID_AAC) {
            avio_w8(pb, get_audio_flags(s, par));
            avio_w8(pb, 0);

            if (!par->extradata_size && (flv->flags & FLV_AAC_SEQ_HEADER_DETECT)) {
                PutBitContext pbc;
                int samplerate_index;
                int channels = flv->audio_par->channels
                        - (flv->audio_par->channels == 8 ? 1 : 0);
                uint8_t data[2];

                for (samplerate_index = 0; samplerate_index < 16;
                        samplerate_index++)
                    if (flv->audio_par->sample_rate
                            == mpeg4audio_sample_rates[samplerate_index])
                        break;

                init_put_bits(&pbc, data, sizeof(data));
                put_bits(&pbc, 5, flv->audio_par->profile + 1);
                put_bits(&pbc, 4, samplerate_index);
                put_bits(&pbc, 4, channels);
                put_bits(&pbc, 1, 0);
                put_bits(&pbc, 1, 0);
                put_bits(&pbc, 1, 0);
                flush_put_bits(&pbc);

                avio_w8(pb, data[0]);
                avio_w8(pb, data[1]);

                av_log(s, AV_LOG_WARNING, "AAC sequence header: %02x %02x.\n",
                        data[0], data[1]);
            }
            avio_write(pb, par->extradata, par->extradata_size);
        } else {
            avio_w8(pb, par->codec_tag | FLV_FRAME_KEY);
            avio_w8(pb, 0);
            avio_wb24(pb, 0);
            ff_isom_write_avcc(pb, par->extradata, par->extradata_size);
        }
        data_size = avio_tell(pb) - pos;
        avio_seek(pb, -data_size - 10, SEEK_CUR);
        avio_wb24(pb, data_size);
        avio_skip(pb, data_size + 10 - 3);
        avio_wb32(pb, data_size + 11);
    }
}
