
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int alloc; int count; TYPE_3__* list; } ;
struct TYPE_8__ {TYPE_1__ pes; } ;
typedef TYPE_2__ hb_stream_t ;
typedef int hb_pes_stream_t ;
struct TYPE_9__ {int stream_id; int next; } ;


 int memset (TYPE_3__*,int ,int) ;
 TYPE_3__* realloc (TYPE_3__*,int) ;

__attribute__((used)) static int new_pes( hb_stream_t * stream )
{
    int num = stream->pes.alloc;

    if ( stream->pes.count == stream->pes.alloc )
    {
        num = stream->pes.alloc ? stream->pes.alloc * 2 : 32;
        stream->pes.list = realloc( stream->pes.list,
                                    sizeof( hb_pes_stream_t ) * num );
    }
    int ii;
    for ( ii = stream->pes.alloc; ii < num; ii++ )
    {
        memset(&stream->pes.list[ii], 0, sizeof( hb_pes_stream_t ));
        stream->pes.list[ii].stream_id = -1;
        stream->pes.list[ii].next = -1;
    }
    stream->pes.alloc = num;
    num = stream->pes.count;
    stream->pes.count++;

    return num;
}
