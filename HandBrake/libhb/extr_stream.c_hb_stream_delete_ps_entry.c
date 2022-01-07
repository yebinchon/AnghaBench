
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* list; } ;
struct TYPE_7__ {TYPE_2__ pes; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_5__ {int stream_id; } ;



__attribute__((used)) static void hb_stream_delete_ps_entry(hb_stream_t *stream, int indx)
{
    if ( stream->pes.list[indx].stream_id > 0 )
    {
        stream->pes.list[indx].stream_id = -stream->pes.list[indx].stream_id;
    }
}
