
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_14__ {TYPE_1__* codecpar; TYPE_3__* priv_data; } ;
struct TYPE_13__ {TYPE_7__** streams; TYPE_4__* priv_data; int * pb; } ;
struct TYPE_12__ {int riff_id; } ;
struct TYPE_10__ {int master_odml_riff_id_base; int audio_strm_offset; int entry; scalar_t__ indx_start; } ;
struct TYPE_11__ {int audio_strm_length; int sample_requested; TYPE_2__ indexes; } ;
struct TYPE_9__ {scalar_t__ codec_type; } ;
typedef TYPE_3__ AVIStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVIContext ;
typedef TYPE_5__ AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int SEEK_SET ;
 int avio_flush (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 int avio_skip (int *,int) ;
 scalar_t__ avio_tell (int *) ;
 int avio_wl32 (int *,int) ;
 int avio_wl64 (int *,scalar_t__) ;
 int avpriv_request_sample (TYPE_5__*,char*) ;
 int ff_parse_specific_params (TYPE_7__*,int*,int*,int*) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static void update_odml_entry(AVFormatContext *s, int stream_index, int64_t ix, int size)
{
    AVIOContext *pb = s->pb;
    AVIContext *avi = s->priv_data;
    AVIStream *avist = s->streams[stream_index]->priv_data;
    int64_t pos;
    int au_byterate, au_ssize, au_scale;

    avio_flush(pb);
    pos = avio_tell(pb);


    avio_seek(pb, avist->indexes.indx_start - 8, SEEK_SET);
    ffio_wfourcc(pb, "indx");
    avio_skip(pb, 8);
    avio_wl32(pb, avi->riff_id - avist->indexes.master_odml_riff_id_base);
    avio_skip(pb, 16 * (avi->riff_id - avist->indexes.master_odml_riff_id_base));
    avio_wl64(pb, ix);
    avio_wl32(pb, size);
    ff_parse_specific_params(s->streams[stream_index], &au_byterate, &au_ssize, &au_scale);
    if (s->streams[stream_index]->codecpar->codec_type == AVMEDIA_TYPE_AUDIO && au_ssize > 0) {
        uint32_t audio_segm_size = (avist->audio_strm_length - avist->indexes.audio_strm_offset);
        if ((audio_segm_size % au_ssize > 0) && !avist->sample_requested) {
            avpriv_request_sample(s, "OpenDML index duration for audio packets with partial frames");
            avist->sample_requested = 1;
        }
        avio_wl32(pb, audio_segm_size / au_ssize);
    } else
        avio_wl32(pb, avist->indexes.entry);

    avio_seek(pb, pos, SEEK_SET);
}
