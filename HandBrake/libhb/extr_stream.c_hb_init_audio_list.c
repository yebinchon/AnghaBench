
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int list_audio; } ;
typedef TYPE_3__ hb_title_t ;
struct TYPE_10__ {int count; TYPE_1__* list; } ;
struct TYPE_12__ {TYPE_2__ pes; } ;
typedef TYPE_4__ hb_stream_t ;
struct TYPE_9__ {scalar_t__ stream_kind; int map_idx; } ;


 scalar_t__ A ;
 int hb_list_count (int ) ;
 int pes_add_audio_to_title (TYPE_4__*,int,TYPE_3__*,int) ;

__attribute__((used)) static void hb_init_audio_list(hb_stream_t *stream, hb_title_t *title)
{
    int ii;
    int map_idx;
    int largest = -1;


    for ( map_idx = 0; 1; map_idx++ )
    {
        for ( ii = 0; ii < stream->pes.count; ii++ )
        {
            if ( stream->pes.list[ii].stream_kind == A )
            {
                if ( stream->pes.list[ii].map_idx == map_idx )
                {
                    pes_add_audio_to_title( stream, ii, title, -1 );
                }
                if ( stream->pes.list[ii].map_idx > largest )
                    largest = stream->pes.list[ii].map_idx;
            }
        }
        if ( map_idx > largest )
            break;
    }

    int count = hb_list_count( title->list_audio );

    for ( ii = 0; ii < stream->pes.count; ii++ )
    {
        if ( stream->pes.list[ii].stream_kind == A )
        {
            pes_add_audio_to_title( stream, ii, title, count );
        }
    }
}
