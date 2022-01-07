
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_1__* list; } ;
struct TYPE_7__ {TYPE_2__ pes; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_5__ {int stream_id; int stream_id_ext; } ;



__attribute__((used)) static int index_of_ps_stream(hb_stream_t *stream, int id, int sid)
{
    int i;

    for ( i = 0; i < stream->pes.count; ++i )
    {
        if ( id == stream->pes.list[i].stream_id &&
             sid == stream->pes.list[i].stream_id_ext )
        {
            return i;
        }
    }


    for ( i = 0; i < stream->pes.count; ++i )
    {
        if ( id == stream->pes.list[i].stream_id &&
             0 == stream->pes.list[i].stream_id_ext )
        {
            return i;
        }
    }

    return -1;
}
