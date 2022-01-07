
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int event_flags; int metadata; } ;
typedef TYPE_1__ AVStream ;
typedef int AVFormatContext ;


 int AVSTREAM_EVENT_FLAG_METADATA_UPDATED ;
 int ff_vorbis_comment (int *,int *,int const*,int,int) ;

int ff_vorbis_stream_comment(AVFormatContext *as, AVStream *st,
                             const uint8_t *buf, int size)
{
    int updates = ff_vorbis_comment(as, &st->metadata, buf, size, 1);

    if (updates > 0) {
        st->event_flags |= AVSTREAM_EVENT_FLAG_METADATA_UPDATED;
    }

    return updates;
}
