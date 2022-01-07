
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_6__ {int pb; int metadata; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int dv_demux; } ;
typedef TYPE_1__ RawDVContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_TIMECODE_STR_SIZE ;
 int ENOMEM ;
 int SEEK_SET ;
 int av_dict_set (int *,char*,char*,int ) ;
 int av_free (int *) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int * av_mallocz (int) ;
 int avio_read (int ,int *,int) ;
 int avio_seek (int ,int ,int ) ;
 int avio_tell (int ) ;
 int dv_extract_timecode (int ,int *,char*) ;

__attribute__((used)) static int dv_read_timecode(AVFormatContext *s) {
    int ret;
    char timecode[AV_TIMECODE_STR_SIZE];
    int64_t pos = avio_tell(s->pb);


    int partial_frame_size = 3 * 80;
    uint8_t *partial_frame = av_mallocz(sizeof(*partial_frame) *
                                        partial_frame_size);

    RawDVContext *c = s->priv_data;
    if (!partial_frame)
        return AVERROR(ENOMEM);

    ret = avio_read(s->pb, partial_frame, partial_frame_size);
    if (ret < 0)
        goto finish;

    if (ret < partial_frame_size) {
        ret = -1;
        goto finish;
    }

    ret = dv_extract_timecode(c->dv_demux, partial_frame, timecode);
    if (ret)
        av_dict_set(&s->metadata, "timecode", timecode, 0);
    else
        av_log(s, AV_LOG_ERROR, "Detected timecode is invalid\n");

finish:
    av_free(partial_frame);
    avio_seek(s->pb, pos, SEEK_SET);
    return ret;
}
