
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_19__ {int video_id; int video_stream_type; int flags; int list_subtitle; int list_audio; } ;
typedef TYPE_5__ hb_title_t ;
struct TYPE_20__ {int id; int stream_type; } ;
typedef TYPE_6__ hb_subtitle_t ;
struct TYPE_18__ {int count; TYPE_3__* list; int * packet; } ;
struct TYPE_21__ {int packetsize; TYPE_4__ ts; int hb_stream_type; int * path; TYPE_5__* title; int * file_handle; int * h; } ;
typedef TYPE_7__ hb_stream_t ;
typedef int hb_handle_t ;
struct TYPE_15__ {int substream_type; int stream_type; } ;
struct TYPE_16__ {TYPE_1__ in; } ;
struct TYPE_22__ {int id; TYPE_2__ config; } ;
typedef TYPE_8__ hb_audio_t ;
struct TYPE_17__ {TYPE_10__* buf; } ;
struct TYPE_14__ {scalar_t__ size; } ;


 int A ;
 int HBTF_SCAN_COMPLETE ;
 int HB_SUBTITLE_EMBEDDED_CC_TAG ;
 int P ;
 int S ;
 int V ;
 TYPE_7__* calloc (int,int) ;
 TYPE_10__* hb_buffer_init (int) ;
 int hb_error (char*) ;
 void* hb_list_item (int ,int) ;
 int transport ;
 int update_ts_streams (TYPE_7__*,int,int,int,int ,int *) ;

hb_stream_t * hb_bd_stream_open( hb_handle_t *h, hb_title_t *title )
{
    int ii;

    hb_stream_t *d = calloc( sizeof( hb_stream_t ), 1 );
    if ( d == ((void*)0) )
    {
        hb_error( "hb_bd_stream_open: can't allocate space for stream state" );
        return ((void*)0);
    }

    d->h = h;
    d->file_handle = ((void*)0);
    d->title = title;
    d->path = ((void*)0);
    d->ts.packet = ((void*)0);

    int pid = title->video_id;
    int stream_type = title->video_stream_type;
    update_ts_streams( d, pid, 0, stream_type, V, ((void*)0) );

    hb_audio_t * audio;
    for ( ii = 0; ( audio = hb_list_item( title->list_audio, ii ) ); ++ii )
    {
        int stream_id_ext = audio->config.in.substream_type;
        pid = audio->id & 0xFFFF;
        stream_type = audio->config.in.stream_type;

        update_ts_streams( d, pid, stream_id_ext, stream_type, A, ((void*)0) );
    }

    hb_subtitle_t * subtitle;
    for ( ii = 0; ( subtitle = hb_list_item( title->list_subtitle, ii ) ); ++ii )
    {



        if (subtitle->id != HB_SUBTITLE_EMBEDDED_CC_TAG)
        {
            pid = subtitle->id & 0xFFFF;
            stream_type = subtitle->stream_type;

            update_ts_streams( d, pid, 0, stream_type, S, ((void*)0) );
        }
    }




    if ( title->flags & HBTF_SCAN_COMPLETE )
    {







        update_ts_streams( d, 0x1001, 0, -1, P, ((void*)0) );
    }

    d->packetsize = 192;
    d->hb_stream_type = transport;

    for ( ii = 0; ii < d->ts.count; ii++ )
    {
        d->ts.list[ii].buf = hb_buffer_init(d->packetsize);
        d->ts.list[ii].buf->size = 0;
    }

    return d;
}
