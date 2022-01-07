
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
struct TYPE_7__ {scalar_t__ timestamp; } ;
struct TYPE_6__ {scalar_t__ last_timestamp; int pts; } ;
typedef TYPE_1__ DHAVStream ;
typedef TYPE_2__ DHAVContext ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;

__attribute__((used)) static int64_t get_pts(AVFormatContext *s, DHAVStream *st)
{
    DHAVContext *dhav = s->priv_data;
    if (st->last_timestamp == AV_NOPTS_VALUE) {
        st->last_timestamp = dhav->timestamp;
    }

    if (st->last_timestamp <= dhav->timestamp) {
        st->pts += dhav->timestamp - st->last_timestamp;
    } else {
        st->pts += 65535 + dhav->timestamp - st->last_timestamp;
    }

    st->last_timestamp = dhav->timestamp;

    return st->pts;
}
