
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int * value; int key; } ;
struct TYPE_12__ {int nb_streams; int flags; int pb; int metadata; TYPE_7__** streams; } ;
struct TYPE_11__ {scalar_t__ codec_type; scalar_t__ codec_id; } ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVDictionaryEntry ;


 int AVERROR (int ) ;
 int AVFMT_FLAG_BITEXACT ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 scalar_t__ AV_CODEC_ID_SUBRIP ;
 scalar_t__ AV_CODEC_ID_TEXT ;
 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_ERROR ;
 int * AV_STRINGIFY (int ) ;
 int EINVAL ;
 int LIBAVFORMAT_VERSION ;
 TYPE_3__* av_dict_get (int ,char*,TYPE_3__ const*,int ) ;
 int av_dict_set (int *,char*,int *,int ) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int avcodec_get_name (scalar_t__) ;
 int avio_printf (int ,char*,...) ;
 int avpriv_set_pts_info (TYPE_7__*,int,int,int) ;
 int ff_lrc_metadata_conv ;
 int ff_metadata_conv_ctx (TYPE_2__*,int ,int *) ;
 int ff_standardize_creation_time (TYPE_2__*) ;
 char* strchr (int *,char) ;

__attribute__((used)) static int lrc_write_header(AVFormatContext *s)
{
    const AVDictionaryEntry *metadata_item;

    if(s->nb_streams != 1 ||
       s->streams[0]->codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE) {
        av_log(s, AV_LOG_ERROR,
               "LRC supports only a single subtitle stream.\n");
        return AVERROR(EINVAL);
    }
    if(s->streams[0]->codecpar->codec_id != AV_CODEC_ID_SUBRIP &&
       s->streams[0]->codecpar->codec_id != AV_CODEC_ID_TEXT) {
        av_log(s, AV_LOG_ERROR, "Unsupported subtitle codec: %s\n",
               avcodec_get_name(s->streams[0]->codecpar->codec_id));
        return AVERROR(EINVAL);
    }
    avpriv_set_pts_info(s->streams[0], 64, 1, 100);

    ff_standardize_creation_time(s);
    ff_metadata_conv_ctx(s, ff_lrc_metadata_conv, ((void*)0));
    if(!(s->flags & AVFMT_FLAG_BITEXACT)) {




        av_dict_set(&s->metadata, "ve", AV_STRINGIFY(LIBAVFORMAT_VERSION), 0);
    } else {
        av_dict_set(&s->metadata, "ve", ((void*)0), 0);
    }
    for(metadata_item = ((void*)0);
       (metadata_item = av_dict_get(s->metadata, "", metadata_item,
                                    AV_DICT_IGNORE_SUFFIX));) {
        char *delim;
        if(!metadata_item->value[0]) {
            continue;
        }
        while((delim = strchr(metadata_item->value, '\n'))) {
            *delim = ' ';
        }
        while((delim = strchr(metadata_item->value, '\r'))) {
            *delim = ' ';
        }
        avio_printf(s->pb, "[%s:%s]\n",
                    metadata_item->key, metadata_item->value);
    }
    avio_printf(s->pb, "\n");
    return 0;
}
