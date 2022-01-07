
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_22__ {int sample_rate; void* codecpriv_offset; void* sample_rate_offset; } ;
typedef TYPE_3__ mkv_track ;
typedef void* int64_t ;
struct TYPE_26__ {int codec_id; int extradata_size; int extradata; } ;
struct TYPE_25__ {TYPE_2__* pb; TYPE_1__** streams; TYPE_4__* priv_data; } ;
struct TYPE_24__ {size_t stream_index; } ;
struct TYPE_23__ {int tracks_bc; int is_live; TYPE_3__* tracks; } ;
struct TYPE_21__ {int seekable; } ;
struct TYPE_20__ {TYPE_7__* codecpar; } ;
typedef TYPE_4__ MatroskaMuxContext ;
typedef TYPE_5__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;
typedef TYPE_7__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVIO_SEEKABLE_NORMAL ;



 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_NEW_EXTRADATA ;
 int EINVAL ;
 int ENOMEM ;
 int MATROSKA_ID_AUDIOOUTSAMPLINGFREQ ;
 int MATROSKA_ID_AUDIOSAMPLINGFREQ ;
 int MATROSKA_ID_CODECPRIVATE ;
 int MAX_PCE_SIZE ;
 int SEEK_SET ;
 int av_free (int *) ;
 int av_freep (int *) ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 int * av_packet_get_side_data (TYPE_5__*,int ,int*) ;
 TYPE_7__* avcodec_parameters_alloc () ;
 int avcodec_parameters_copy (TYPE_7__*,TYPE_7__*) ;
 int avcodec_parameters_free (TYPE_7__**) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 int avio_seek (int ,void*,int ) ;
 void* avio_tell (int ) ;
 int ff_alloc_extradata (TYPE_7__*,int) ;
 int ff_isom_write_av1c (int *,int *,int) ;
 int get_aac_sample_rates (TYPE_6__*,int *,int,int*,int*) ;
 int memcpy (int ,int *,int) ;
 int mkv_write_codecprivate (TYPE_6__*,int ,TYPE_7__*,int,int ) ;
 int put_ebml_binary (int ,int ,int *,int) ;
 int put_ebml_float (int ,int ,int) ;
 int put_ebml_void (int ,int) ;

__attribute__((used)) static int mkv_check_new_extra_data(AVFormatContext *s, AVPacket *pkt)
{
    MatroskaMuxContext *mkv = s->priv_data;
    mkv_track *track = &mkv->tracks[pkt->stream_index];
    AVCodecParameters *par = s->streams[pkt->stream_index]->codecpar;
    uint8_t *side_data;
    int side_data_size = 0, ret;

    side_data = av_packet_get_side_data(pkt, AV_PKT_DATA_NEW_EXTRADATA,
                                        &side_data_size);

    switch (par->codec_id) {
    case 130:
        if (side_data_size && (s->pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live) {
            int filler, output_sample_rate = 0;
            int64_t curpos;
            ret = get_aac_sample_rates(s, side_data, side_data_size, &track->sample_rate,
                                       &output_sample_rate);
            if (ret < 0)
                return ret;
            if (!output_sample_rate)
                output_sample_rate = track->sample_rate;
            av_freep(&par->extradata);
            ret = ff_alloc_extradata(par, side_data_size);
            if (ret < 0)
                return ret;
            memcpy(par->extradata, side_data, side_data_size);
            curpos = avio_tell(mkv->tracks_bc);
            avio_seek(mkv->tracks_bc, track->codecpriv_offset, SEEK_SET);
            mkv_write_codecprivate(s, mkv->tracks_bc, par, 1, 0);
            filler = MAX_PCE_SIZE + 2 + 4 - (avio_tell(mkv->tracks_bc) - track->codecpriv_offset);
            if (filler)
                put_ebml_void(mkv->tracks_bc, filler);
            avio_seek(mkv->tracks_bc, track->sample_rate_offset, SEEK_SET);
            put_ebml_float(mkv->tracks_bc, MATROSKA_ID_AUDIOSAMPLINGFREQ, track->sample_rate);
            put_ebml_float(mkv->tracks_bc, MATROSKA_ID_AUDIOOUTSAMPLINGFREQ, output_sample_rate);
            avio_seek(mkv->tracks_bc, curpos, SEEK_SET);
        } else if (!par->extradata_size && !track->sample_rate) {

            av_log(s, AV_LOG_ERROR, "Error parsing AAC extradata, unable to determine samplerate.\n");
            return AVERROR(EINVAL);
        }
        break;
    case 128:
        if (side_data_size && (s->pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live) {
            AVCodecParameters *codecpriv_par;
            int64_t curpos;
            if (side_data_size != par->extradata_size) {
                av_log(s, AV_LOG_ERROR, "Invalid FLAC STREAMINFO metadata for output stream %d\n",
                       pkt->stream_index);
                return AVERROR(EINVAL);
            }
            codecpriv_par = avcodec_parameters_alloc();
            if (!codecpriv_par)
                return AVERROR(ENOMEM);
            ret = avcodec_parameters_copy(codecpriv_par, par);
            if (ret < 0) {
                avcodec_parameters_free(&codecpriv_par);
                return ret;
            }
            memcpy(codecpriv_par->extradata, side_data, side_data_size);
            curpos = avio_tell(mkv->tracks_bc);
            avio_seek(mkv->tracks_bc, track->codecpriv_offset, SEEK_SET);
            mkv_write_codecprivate(s, mkv->tracks_bc, codecpriv_par, 1, 0);
            avio_seek(mkv->tracks_bc, curpos, SEEK_SET);
            avcodec_parameters_free(&codecpriv_par);
        }
        break;


    case 129:
        if (side_data_size && (s->pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live &&
            !par->extradata_size) {
            AVIOContext *dyn_cp;
            uint8_t *codecpriv;
            int codecpriv_size;
            int64_t curpos;
            ret = avio_open_dyn_buf(&dyn_cp);
            if (ret < 0)
                return ret;
            ff_isom_write_av1c(dyn_cp, side_data, side_data_size);
            codecpriv_size = avio_close_dyn_buf(dyn_cp, &codecpriv);
            if (!codecpriv_size) {
                av_free(codecpriv);
                return AVERROR_INVALIDDATA;
            }
            curpos = avio_tell(mkv->tracks_bc);
            avio_seek(mkv->tracks_bc, track->codecpriv_offset, SEEK_SET);

            put_ebml_binary(mkv->tracks_bc, MATROSKA_ID_CODECPRIVATE, codecpriv, 4);
            av_free(codecpriv);
            avio_seek(mkv->tracks_bc, curpos, SEEK_SET);
            ret = ff_alloc_extradata(par, side_data_size);
            if (ret < 0)
                return ret;
            memcpy(par->extradata, side_data, side_data_size);
        } else if (!par->extradata_size)
            return AVERROR_INVALIDDATA;
        break;
    default:
        if (side_data_size)
            av_log(s, AV_LOG_DEBUG, "Ignoring new extradata in a packet for stream %d.\n", pkt->stream_index);
        break;
    }

    return 0;
}
