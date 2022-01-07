
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {TYPE_4__* codecpar; TYPE_1__* priv_data; } ;
struct TYPE_10__ {scalar_t__ codec_type; } ;
struct TYPE_9__ {int nb_streams; TYPE_5__** streams; TYPE_2__* priv_data; int * pb; } ;
struct TYPE_8__ {int frames_hdr_all; } ;
struct TYPE_7__ {int packet_count; int audio_strm_length; int frames_hdr_strm; } ;
typedef TYPE_1__ AVIStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVIContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int FFMAX (int,int) ;
 int SEEK_SET ;
 int av_assert0 (int ) ;
 int avio_seek (int *,int ,int ) ;
 int avio_tell (int *) ;
 int avio_wl32 (int *,int) ;
 int ff_parse_specific_params (TYPE_5__*,int*,int*,int*) ;

__attribute__((used)) static int avi_write_counters(AVFormatContext *s, int riff_id)
{
    AVIOContext *pb = s->pb;
    AVIContext *avi = s->priv_data;
    int n, au_byterate, au_ssize, au_scale, nb_frames = 0;
    int64_t file_size;
    AVCodecParameters *par;

    file_size = avio_tell(pb);
    for (n = 0; n < s->nb_streams; n++) {
        AVIStream *avist = s->streams[n]->priv_data;

        av_assert0(avist->frames_hdr_strm);
        par = s->streams[n]->codecpar;
        avio_seek(pb, avist->frames_hdr_strm, SEEK_SET);
        ff_parse_specific_params(s->streams[n], &au_byterate, &au_ssize, &au_scale);
        if (au_ssize == 0)
            avio_wl32(pb, avist->packet_count);
        else
            avio_wl32(pb, avist->audio_strm_length / au_ssize);
        if (par->codec_type == AVMEDIA_TYPE_VIDEO)
            nb_frames = FFMAX(nb_frames, avist->packet_count);
    }
    if (riff_id == 1) {
        av_assert0(avi->frames_hdr_all);
        avio_seek(pb, avi->frames_hdr_all, SEEK_SET);
        avio_wl32(pb, nb_frames);
    }
    avio_seek(pb, file_size, SEEK_SET);

    return 0;
}
