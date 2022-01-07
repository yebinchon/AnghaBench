
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * fifo_out; TYPE_3__* common; } ;
typedef TYPE_2__ sync_stream_t ;
struct TYPE_10__ {int mutex; int found_first_pts; TYPE_1__* job; scalar_t__ start_found; } ;
typedef TYPE_3__ sync_common_t ;
struct TYPE_8__ {int * die; int done; } ;


 int OutputBuffer (TYPE_3__*) ;
 int checkFirstPts (TYPE_3__*) ;
 int fillQueues (TYPE_3__*) ;
 scalar_t__ hb_fifo_full_wait (int *) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

__attribute__((used)) static void Synchronize( sync_stream_t * stream )
{
    sync_common_t * common = stream->common;





    if (stream->fifo_out != ((void*)0) && common->start_found)
    {
        while (!common->job->done && !*common->job->die)
        {
            if (hb_fifo_full_wait(stream->fifo_out))
            {
                break;
            }
        }
    }

    hb_lock(common->mutex);

    if (!fillQueues(common))
    {
        hb_unlock(common->mutex);
        return;
    }
    if (!common->found_first_pts)
    {
        checkFirstPts(common);
    }
    OutputBuffer(common);

    hb_unlock(common->mutex);
}
