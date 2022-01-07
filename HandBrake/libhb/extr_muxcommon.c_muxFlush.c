
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ntracks; scalar_t__ interleave; int pts; TYPE_1__** track; int m; } ;
typedef TYPE_3__ hb_mux_t ;
struct TYPE_7__ {scalar_t__ out; scalar_t__ in; } ;
struct TYPE_6__ {TYPE_2__ mf; } ;


 int OutputTrackChunk (TYPE_3__*,int,int ) ;

__attribute__((used)) static void muxFlush(hb_mux_t * mux)
{
    int ii, done = 0;

    while (!done)
    {
        done = 1;
        for (ii = 0; ii < mux->ntracks; ii++)
        {
            OutputTrackChunk(mux, ii, mux->m);
            if (mux->track[ii]->mf.out != mux->track[ii]->mf.in)
            {

                done = 0;
            }
        }
        mux->pts += mux->interleave;
    }
}
