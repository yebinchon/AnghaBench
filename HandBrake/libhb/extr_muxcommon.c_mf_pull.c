
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int out; int in; int flen; TYPE_4__** fifo; } ;
struct TYPE_8__ {int buffered_size; TYPE_1__ mf; } ;
typedef TYPE_2__ hb_track_t ;
struct TYPE_9__ {int buffered_size; TYPE_2__** track; } ;
typedef TYPE_3__ hb_mux_t ;
struct TYPE_10__ {scalar_t__ size; } ;
typedef TYPE_4__ hb_buffer_t ;



__attribute__((used)) static hb_buffer_t *mf_pull( hb_mux_t * mux, int tk )
{
    hb_track_t *track =mux->track[tk];
    hb_buffer_t *b = ((void*)0);
    if ( track->mf.out != track->mf.in )
    {

        b = track->mf.fifo[track->mf.out & (track->mf.flen - 1)];
        ++track->mf.out;

        track->buffered_size -= b->size;
        mux->buffered_size -= b->size;
    }
    return b;
}
