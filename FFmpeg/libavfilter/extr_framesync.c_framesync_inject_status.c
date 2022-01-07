
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {TYPE_1__* in; } ;
struct TYPE_6__ {int have_next; scalar_t__ state; scalar_t__ after; int pts_next; int * frame_next; scalar_t__ sync; int pts; } ;
typedef TYPE_2__ FFFrameSync ;


 scalar_t__ EXT_INFINITY ;
 int INT64_MAX ;
 scalar_t__ STATE_RUN ;
 int av_assert0 (int) ;
 int framesync_pts_extrapolate (TYPE_2__*,unsigned int,int ) ;
 int framesync_sync_level_update (TYPE_2__*) ;

__attribute__((used)) static void framesync_inject_status(FFFrameSync *fs, unsigned in, int status, int64_t pts)
{
    av_assert0(!fs->in[in].have_next);
    pts = fs->in[in].state != STATE_RUN || fs->in[in].after == EXT_INFINITY
        ? INT64_MAX : framesync_pts_extrapolate(fs, in, fs->in[in].pts);
    fs->in[in].sync = 0;
    framesync_sync_level_update(fs);
    fs->in[in].frame_next = ((void*)0);
    fs->in[in].pts_next = pts;
    fs->in[in].have_next = 1;
}
