
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* list; } ;
struct TYPE_10__ {TYPE_3__* list; } ;
struct TYPE_11__ {TYPE_2__ pes; TYPE_4__ ts; } ;
typedef TYPE_5__ hb_stream_t ;
struct TYPE_9__ {int pes_list; } ;
struct TYPE_7__ {int next; } ;



__attribute__((used)) static void ts_pes_list_add( hb_stream_t *stream, int ts_idx, int pes_idx )
{
    int ii = stream->ts.list[ts_idx].pes_list;
    if ( ii == -1 )
    {
        stream->ts.list[ts_idx].pes_list = pes_idx;
        return;
    }

    int idx;
    while ( ii != -1 )
    {
        if ( ii == pes_idx )
            return;
        idx = ii;
        ii = stream->pes.list[ii].next;
    }
    stream->pes.list[idx].next = pes_idx;
}
