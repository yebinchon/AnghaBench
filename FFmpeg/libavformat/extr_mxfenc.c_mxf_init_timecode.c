
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int value; } ;
struct TYPE_12__ {int metadata; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int metadata; } ;
struct TYPE_10__ {int tc; } ;
typedef TYPE_1__ MXFContext ;
typedef TYPE_2__ AVStream ;
typedef int AVRational ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVDictionaryEntry ;


 TYPE_4__* av_dict_get (int ,char*,int *,int ) ;
 int av_timecode_init (int *,int ,int ,int ,TYPE_3__*) ;
 int av_timecode_init_from_string (int *,int ,int ,TYPE_3__*) ;

__attribute__((used)) static int mxf_init_timecode(AVFormatContext *s, AVStream *st, AVRational rate)
{
    MXFContext *mxf = s->priv_data;
    AVDictionaryEntry *tcr = av_dict_get(s->metadata, "timecode", ((void*)0), 0);
    if (!tcr)
        tcr = av_dict_get(st->metadata, "timecode", ((void*)0), 0);

    if (tcr)
        return av_timecode_init_from_string(&mxf->tc, rate, tcr->value, s);
    else
        return av_timecode_init(&mxf->tc, rate, 0, 0, s);
}
