
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_15__ {char* url; TYPE_2__** streams; int pb; int nb_streams; TYPE_4__* priv_data; } ;
struct TYPE_11__ {TYPE_3__* elem; } ;
struct TYPE_14__ {scalar_t__ bandwidth; int is_live; TYPE_1__ tracks; int duration; } ;
struct TYPE_13__ {scalar_t__ num; } ;
struct TYPE_12__ {int metadata; } ;
typedef TYPE_3__ MatroskaTrack ;
typedef TYPE_4__ MatroskaDemuxContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int BANDWIDTH ;
 int DURATION ;
 int ENOMEM ;
 int FILENAME ;
 int INITIALIZATION_RANGE ;
 int TRACK_NUMBER ;
 char* av_asprintf (char*,int ) ;
 int av_dict_set (int *,int ,char*,int ) ;
 int av_dict_set_int (int *,int ,scalar_t__,int ) ;
 int av_free (char*) ;
 int av_log (TYPE_5__*,int ,char*) ;
 scalar_t__ avio_tell (int ) ;
 int matroska_read_close (TYPE_5__*) ;
 int matroska_read_header (TYPE_5__*) ;
 char* strrchr (char*,char) ;
 int webm_dash_manifest_cues (TYPE_5__*,scalar_t__) ;

__attribute__((used)) static int webm_dash_manifest_read_header(AVFormatContext *s)
{
    char *buf;
    int ret = matroska_read_header(s);
    int64_t init_range;
    MatroskaTrack *tracks;
    MatroskaDemuxContext *matroska = s->priv_data;
    if (ret) {
        av_log(s, AV_LOG_ERROR, "Failed to read file headers\n");
        return -1;
    }
    if (!s->nb_streams) {
        matroska_read_close(s);
        av_log(s, AV_LOG_ERROR, "No streams found\n");
        return AVERROR_INVALIDDATA;
    }

    if (!matroska->is_live) {
        buf = av_asprintf("%g", matroska->duration);
        if (!buf) return AVERROR(ENOMEM);
        av_dict_set(&s->streams[0]->metadata, DURATION, buf, 0);
        av_free(buf);



        init_range = avio_tell(s->pb) - 5;
        av_dict_set_int(&s->streams[0]->metadata, INITIALIZATION_RANGE, init_range, 0);
    }


    buf = strrchr(s->url, '/');
    av_dict_set(&s->streams[0]->metadata, FILENAME, buf ? ++buf : s->url, 0);


    tracks = matroska->tracks.elem;
    av_dict_set_int(&s->streams[0]->metadata, TRACK_NUMBER, tracks[0].num, 0);


    if (!matroska->is_live) {
        ret = webm_dash_manifest_cues(s, init_range);
        if (ret < 0) {
            av_log(s, AV_LOG_ERROR, "Error parsing Cues\n");
            return ret;
        }
    }


    if (matroska->bandwidth > 0) {
        av_dict_set_int(&s->streams[0]->metadata, BANDWIDTH,
                        matroska->bandwidth, 0);
    }
    return 0;
}
