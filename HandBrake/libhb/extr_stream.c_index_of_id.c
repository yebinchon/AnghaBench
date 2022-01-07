
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int * list; } ;
struct TYPE_5__ {TYPE_1__ pes; } ;
typedef TYPE_2__ hb_stream_t ;


 int get_id (int *) ;

__attribute__((used)) static int index_of_id(hb_stream_t *stream, int id)
{
    int i;

    for ( i = 0; i < stream->pes.count; ++i )
    {
        if ( id == get_id( &stream->pes.list[i] ) )
            return i;
    }

    return -1;
}
