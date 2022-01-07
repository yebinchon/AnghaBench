
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int value; } ;
struct TYPE_10__ {int nb_streams; int metadata; TYPE_2__** streams; } ;
struct TYPE_9__ {int metadata; TYPE_1__* codecpar; } ;
struct TYPE_8__ {scalar_t__ codec_tag; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVDictionaryEntry ;


 scalar_t__ MKTAG (char,char,char,char) ;
 TYPE_4__* av_dict_get (int ,char*,int *,int ) ;
 int av_dict_set (int *,char*,int ,int ) ;
 int tmcd_is_referenced (TYPE_3__*,int) ;

__attribute__((used)) static void export_orphan_timecode(AVFormatContext *s)
{
    int i;

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];

        if (st->codecpar->codec_tag == MKTAG('t','m','c','d') &&
            !tmcd_is_referenced(s, i + 1)) {
            AVDictionaryEntry *tcr = av_dict_get(st->metadata, "timecode", ((void*)0), 0);
            if (tcr) {
                av_dict_set(&s->metadata, "timecode", tcr->value, 0);
                break;
            }
        }
    }
}
