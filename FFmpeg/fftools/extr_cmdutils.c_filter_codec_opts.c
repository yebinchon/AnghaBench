
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_19__ {int const* priv_class; } ;
struct TYPE_18__ {char* key; int value; } ;
struct TYPE_17__ {scalar_t__ oformat; } ;
struct TYPE_16__ {TYPE_1__* codecpar; } ;
struct TYPE_15__ {int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVDictionaryEntry ;
typedef int AVDictionary ;
typedef TYPE_5__ AVCodec ;
typedef int AVClass ;





 int AV_DICT_IGNORE_SUFFIX ;
 int AV_OPT_FLAG_AUDIO_PARAM ;
 int AV_OPT_FLAG_DECODING_PARAM ;
 int AV_OPT_FLAG_ENCODING_PARAM ;
 int AV_OPT_FLAG_SUBTITLE_PARAM ;
 int AV_OPT_FLAG_VIDEO_PARAM ;
 int AV_OPT_SEARCH_FAKE_OBJ ;
 TYPE_4__* av_dict_get (int *,char*,TYPE_4__*,int ) ;
 int av_dict_set (int **,char*,int ,int ) ;
 scalar_t__ av_opt_find (int const**,char*,int *,int,int ) ;
 TYPE_5__* avcodec_find_decoder (int) ;
 TYPE_5__* avcodec_find_encoder (int) ;
 int * avcodec_get_class () ;
 int check_stream_specifier (TYPE_3__*,TYPE_2__*,char*) ;
 int exit_program (int) ;
 char* strchr (char*,char) ;

AVDictionary *filter_codec_opts(AVDictionary *opts, enum AVCodecID codec_id,
                                AVFormatContext *s, AVStream *st, AVCodec *codec)
{
    AVDictionary *ret = ((void*)0);
    AVDictionaryEntry *t = ((void*)0);
    int flags = s->oformat ? AV_OPT_FLAG_ENCODING_PARAM
                                      : AV_OPT_FLAG_DECODING_PARAM;
    char prefix = 0;
    const AVClass *cc = avcodec_get_class();

    if (!codec)
        codec = s->oformat ? avcodec_find_encoder(codec_id)
                                      : avcodec_find_decoder(codec_id);

    switch (st->codecpar->codec_type) {
    case 128:
        prefix = 'v';
        flags |= AV_OPT_FLAG_VIDEO_PARAM;
        break;
    case 130:
        prefix = 'a';
        flags |= AV_OPT_FLAG_AUDIO_PARAM;
        break;
    case 129:
        prefix = 's';
        flags |= AV_OPT_FLAG_SUBTITLE_PARAM;
        break;
    }

    while (t = av_dict_get(opts, "", t, AV_DICT_IGNORE_SUFFIX)) {
        char *p = strchr(t->key, ':');


        if (p)
            switch (check_stream_specifier(s, st, p + 1)) {
            case 1: *p = 0; break;
            case 0: continue;
            default: exit_program(1);
            }

        if (av_opt_find(&cc, t->key, ((void*)0), flags, AV_OPT_SEARCH_FAKE_OBJ) ||
            !codec ||
            (codec->priv_class &&
             av_opt_find(&codec->priv_class, t->key, ((void*)0), flags,
                         AV_OPT_SEARCH_FAKE_OBJ)))
            av_dict_set(&ret, t->key, t->value, 0);
        else if (t->key[0] == prefix &&
                 av_opt_find(&cc, t->key + 1, ((void*)0), flags,
                             AV_OPT_SEARCH_FAKE_OBJ))
            av_dict_set(&ret, t->key + 1, t->value, 0);

        if (p)
            *p = ':';
    }
    return ret;
}
