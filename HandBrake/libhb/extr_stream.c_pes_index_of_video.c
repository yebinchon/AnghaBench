
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
struct TYPE_5__ {scalar_t__ stream_kind; } ;


 scalar_t__ V ;

__attribute__((used)) static int pes_index_of_video(hb_stream_t *stream)
{
    int i;

    for ( i = 0; i < stream->pes.count; ++i )
        if ( V == stream->pes.list[i].stream_kind )
            return i;

    return -1;
}
