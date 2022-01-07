
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float uint64_t ;
struct TYPE_3__ {float duration; int stream; int bd; scalar_t__ next_chap; } ;
typedef TYPE_1__ hb_bd_t ;


 scalar_t__ bd_get_current_chapter (int ) ;
 int bd_seek_time (int ,float) ;
 int hb_ts_stream_reset (int ) ;

int hb_bd_seek( hb_bd_t * d, float f )
{
    uint64_t pos = f * d->duration;

    bd_seek_time(d->bd, pos);
    d->next_chap = bd_get_current_chapter( d->bd ) + 1;
    hb_ts_stream_reset(d->stream);
    return 1;
}
