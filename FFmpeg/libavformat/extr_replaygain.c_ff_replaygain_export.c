
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * value; } ;
typedef int AVStream ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int INT32_MIN ;
 TYPE_1__* av_dict_get (int *,char*,int *,int ) ;
 int ff_replaygain_export_raw (int *,int ,int ,int ,int ) ;
 int parse_value (int *,int ) ;

int ff_replaygain_export(AVStream *st, AVDictionary *metadata)
{
    const AVDictionaryEntry *tg, *tp, *ag, *ap;

    tg = av_dict_get(metadata, "REPLAYGAIN_TRACK_GAIN", ((void*)0), 0);
    tp = av_dict_get(metadata, "REPLAYGAIN_TRACK_PEAK", ((void*)0), 0);
    ag = av_dict_get(metadata, "REPLAYGAIN_ALBUM_GAIN", ((void*)0), 0);
    ap = av_dict_get(metadata, "REPLAYGAIN_ALBUM_PEAK", ((void*)0), 0);

    return ff_replaygain_export_raw(st,
                             parse_value(tg ? tg->value : ((void*)0), INT32_MIN),
                             parse_value(tp ? tp->value : ((void*)0), 0),
                             parse_value(ag ? ag->value : ((void*)0), INT32_MIN),
                             parse_value(ap ? ap->value : ((void*)0), 0));
}
