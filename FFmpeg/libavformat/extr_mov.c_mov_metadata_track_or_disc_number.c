
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_5__ {TYPE_1__* fc; } ;
struct TYPE_4__ {int metadata; int event_flags; } ;
typedef TYPE_2__ MOVContext ;
typedef int AVIOContext ;


 int AVFMT_EVENT_FLAG_METADATA_UPDATED ;
 int av_dict_set (int *,char const*,char*,int ) ;
 short avio_rb16 (int *) ;
 int snprintf (char*,int,char*,short,...) ;

__attribute__((used)) static int mov_metadata_track_or_disc_number(MOVContext *c, AVIOContext *pb,
                                             unsigned len, const char *key)
{
    char buf[16];

    short current, total = 0;
    avio_rb16(pb);
    current = avio_rb16(pb);
    if (len >= 6)
        total = avio_rb16(pb);
    if (!total)
        snprintf(buf, sizeof(buf), "%d", current);
    else
        snprintf(buf, sizeof(buf), "%d/%d", current, total);
    c->fc->event_flags |= AVFMT_EVENT_FLAG_METADATA_UPDATED;
    av_dict_set(&c->fc->metadata, key, buf, 0);

    return 0;
}
