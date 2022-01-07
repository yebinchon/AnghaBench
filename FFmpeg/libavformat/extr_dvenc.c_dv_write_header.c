
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {int value; } ;
struct TYPE_19__ {int nb_streams; TYPE_2__** streams; int metadata; TYPE_3__* priv_data; } ;
struct TYPE_18__ {int den; int num; } ;
struct TYPE_17__ {int tc; TYPE_1__* sys; } ;
struct TYPE_16__ {int metadata; } ;
struct TYPE_15__ {int ltc_divisor; } ;
typedef TYPE_3__ DVMuxContext ;
typedef TYPE_4__ AVRational ;
typedef TYPE_5__ AVFormatContext ;
typedef TYPE_6__ AVDictionaryEntry ;


 int AV_LOG_ERROR ;
 TYPE_6__* av_dict_get (int ,char*,int *,int ) ;
 int av_log (TYPE_5__*,int ,char*) ;
 int av_timecode_init (int *,TYPE_4__,int ,int ,TYPE_5__*) ;
 scalar_t__ av_timecode_init_from_string (int *,TYPE_4__,int ,TYPE_5__*) ;
 int dv_init_mux (TYPE_5__*) ;

__attribute__((used)) static int dv_write_header(AVFormatContext *s)
{
    AVRational rate;
    DVMuxContext *dvc = s->priv_data;
    AVDictionaryEntry *tcr = av_dict_get(s->metadata, "timecode", ((void*)0), 0);

    if (!dv_init_mux(s)) {
        av_log(s, AV_LOG_ERROR, "Can't initialize DV format!\n"
                    "Make sure that you supply exactly two streams:\n"
                    "     video: 25fps or 29.97fps, audio: 2ch/48|44|32kHz/PCM\n"
                    "     (50Mbps allows an optional second audio stream)\n");
        return -1;
    }
    rate.num = dvc->sys->ltc_divisor;
    rate.den = 1;
    if (!tcr) {
        int i;
        for (i = 0; i < s->nb_streams; i++) {
            tcr = av_dict_get(s->streams[i]->metadata, "timecode", ((void*)0), 0);
            if (tcr)
                break;
        }
    }
    if (tcr && av_timecode_init_from_string(&dvc->tc, rate, tcr->value, s) >= 0)
        return 0;
    return av_timecode_init(&dvc->tc, rate, 0, 0, s);
}
