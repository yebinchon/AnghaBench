
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int codec_id; int codec_type; } ;
typedef int OptionsContext ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;
typedef TYPE_3__ AVCodec ;


 int MATCH_PER_STREAM_OPT (int ,int ,char*,int *,TYPE_2__*) ;
 TYPE_3__* avcodec_find_decoder (int ) ;
 int codec_names ;
 TYPE_3__* find_codec_or_die (char*,int ,int ) ;
 int str ;

__attribute__((used)) static AVCodec *choose_decoder(OptionsContext *o, AVFormatContext *s, AVStream *st)
{
    char *codec_name = ((void*)0);

    MATCH_PER_STREAM_OPT(codec_names, str, codec_name, s, st);
    if (codec_name) {
        AVCodec *codec = find_codec_or_die(codec_name, st->codecpar->codec_type, 0);
        st->codecpar->codec_id = codec->id;
        return codec;
    } else
        return avcodec_find_decoder(st->codecpar->codec_id);
}
