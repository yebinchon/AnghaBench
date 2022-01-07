
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hb_ts_stream_t ;
struct TYPE_7__ {int alloc; int count; TYPE_3__* list; } ;
struct TYPE_8__ {TYPE_1__ ts; } ;
typedef TYPE_2__ hb_stream_t ;
struct TYPE_9__ {int continuity; int pid; int pes_list; } ;


 int memset (TYPE_3__*,int ,int) ;
 TYPE_3__* realloc (TYPE_3__*,int) ;

__attribute__((used)) static int new_pid( hb_stream_t * stream )
{
    int num = stream->ts.alloc;

    if ( stream->ts.count == stream->ts.alloc )
    {
        num = stream->ts.alloc ? stream->ts.alloc * 2 : 32;
        stream->ts.list = realloc( stream->ts.list,
                                   sizeof( hb_ts_stream_t ) * num );
    }
    int ii;
    for ( ii = stream->ts.alloc; ii < num; ii++ )
    {
        memset(&stream->ts.list[ii], 0, sizeof( hb_ts_stream_t ));
        stream->ts.list[ii].continuity = -1;
        stream->ts.list[ii].pid = -1;
        stream->ts.list[ii].pes_list = -1;
    }
    stream->ts.alloc = num;
    num = stream->ts.count;
    stream->ts.count++;

    return num;
}
