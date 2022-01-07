
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; } ;
struct TYPE_6__ {TYPE_1__ ts; } ;
typedef TYPE_2__ hb_stream_t ;


 scalar_t__ V ;
 scalar_t__ ts_stream_kind (TYPE_2__*,int) ;

__attribute__((used)) static int ts_index_of_video(hb_stream_t *stream)
{
    int i;

    for ( i = 0; i < stream->ts.count; ++i )
        if ( V == ts_stream_kind( stream, i ) )
            return i;

    return -1;
}
