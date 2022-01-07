
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int frames; int mux_data; int bytes; } ;
typedef TYPE_2__ hb_track_t ;
struct TYPE_16__ {scalar_t__ pts; TYPE_2__** track; } ;
typedef TYPE_3__ hb_mux_t ;
struct TYPE_17__ {int (* mux ) (TYPE_4__*,int ,TYPE_5__*) ;} ;
typedef TYPE_4__ hb_mux_object_t ;
struct TYPE_14__ {scalar_t__ start; } ;
struct TYPE_18__ {scalar_t__ size; TYPE_1__ s; } ;
typedef TYPE_5__ hb_buffer_t ;


 TYPE_5__* mf_peek (TYPE_2__*) ;
 TYPE_5__* mf_pull (TYPE_3__*,int) ;
 int stub1 (TYPE_4__*,int ,TYPE_5__*) ;

__attribute__((used)) static void OutputTrackChunk( hb_mux_t *mux, int tk, hb_mux_object_t *m )
{
    hb_track_t *track = mux->track[tk];
    hb_buffer_t *buf;

    while ( ( buf = mf_peek( track ) ) != ((void*)0) && buf->s.start < mux->pts )
    {
        buf = mf_pull( mux, tk );
        track->frames += 1;
        track->bytes += buf->size;
        m->mux( m, track->mux_data, buf );
    }
}
