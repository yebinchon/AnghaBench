#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flen; void* fifo; } ;
struct TYPE_8__ {TYPE_1__ mf; int /*<<< orphan*/ * mux_data; } ;
typedef  TYPE_2__ hb_track_t ;
struct TYPE_9__ {int ntracks; int max_tracks; int /*<<< orphan*/  allRdy; int /*<<< orphan*/  allEof; TYPE_2__** track; } ;
typedef  TYPE_3__ hb_mux_t ;
typedef  int /*<<< orphan*/  hb_mux_data_t ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_2__** FUNC3 (TYPE_2__**,int) ; 

__attribute__((used)) static void FUNC4( hb_mux_t *mux, hb_mux_data_t *mux_data,
                           int is_continuous )
{
    if ( mux->ntracks + 1 > mux->max_tracks )
    {
        int max_tracks = mux->max_tracks ? mux->max_tracks * 2 : 32;
        hb_track_t **tmp;
        tmp = FUNC3(mux->track, max_tracks * sizeof(hb_track_t*));
        if (tmp == NULL)
        {
            FUNC2("add_mux_track: realloc failed, too many tracks (>%d)",
                     max_tracks);
            return;
        }
        mux->track = tmp;
        mux->max_tracks = max_tracks;
    }

    hb_track_t *track = FUNC0( sizeof( hb_track_t ), 1 );
    track->mux_data = mux_data;
    track->mf.flen = 8;
    track->mf.fifo = FUNC0( sizeof(track->mf.fifo[0]), track->mf.flen );

    int t = mux->ntracks++;
    mux->track[t] = track;
    FUNC1(mux->allEof, t);
    if (is_continuous)
        FUNC1(mux->allRdy, t);
}