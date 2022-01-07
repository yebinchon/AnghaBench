
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int count; TYPE_3__* list; } ;
struct TYPE_14__ {int count; TYPE_1__* list; } ;
struct TYPE_17__ {scalar_t__ hb_stream_type; TYPE_4__ pes; TYPE_2__ ts; } ;
typedef TYPE_5__ hb_stream_t ;
struct TYPE_15__ {int next; scalar_t__ stream_kind; int stream_id_ext; int stream_id; } ;
struct TYPE_13__ {int pes_list; int is_pcr; } ;


 scalar_t__ A ;
 scalar_t__ U ;
 scalar_t__ audio_inactive (TYPE_5__*,int ,int ) ;
 int hb_stream_delete_ps_entry (TYPE_5__*,int) ;
 int hb_stream_delete_ts_entry (TYPE_5__*,int) ;
 int hb_stream_seek (TYPE_5__*,int) ;
 scalar_t__ hb_stream_try_delete_ts_entry (TYPE_5__*,int) ;
 scalar_t__ program ;
 scalar_t__ transport ;
 scalar_t__ ts_stream_kind (TYPE_5__*,int) ;

__attribute__((used)) static void prune_streams(hb_stream_t *d)
{
    if ( d->hb_stream_type == transport )
    {
        int ii, jj;
        for ( ii = 0; ii < d->ts.count; ii++)
        {


            if ( ts_stream_kind ( d, ii ) == U &&
                 !d->ts.list[ii].is_pcr )
            {
                hb_stream_delete_ts_entry(d, ii);
                continue;
            }

            if ( ts_stream_kind ( d, ii ) == A )
            {
                for ( jj = d->ts.list[ii].pes_list; jj != -1;
                      jj = d->pes.list[jj].next )
                {
                    if ( audio_inactive( d, d->pes.list[jj].stream_id,
                                         d->pes.list[jj].stream_id_ext ) )
                    {
                        hb_stream_delete_ps_entry(d, jj);
                    }
                }
                if ( !d->ts.list[ii].is_pcr &&
                     hb_stream_try_delete_ts_entry(d, ii) )
                {
                    continue;
                }
            }
        }


        hb_stream_seek( d, 0. );
    }
    else if ( d->hb_stream_type == program )
    {
        int ii;
        for ( ii = 0; ii < d->pes.count; ii++)
        {

            if ( d->pes.list[ii].stream_kind == U )
            {
                hb_stream_delete_ps_entry(d, ii);
            }

            if ( d->pes.list[ii].stream_kind == A &&
                 audio_inactive( d, d->pes.list[ii].stream_id,
                                 d->pes.list[ii].stream_id_ext ) )
            {


                hb_stream_delete_ps_entry(d, ii);
                continue;
            }
        }


        hb_stream_seek( d, 0. );
    }
}
