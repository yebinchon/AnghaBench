
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int nb_in; unsigned int sync_level; TYPE_1__* in; } ;
struct TYPE_6__ {scalar_t__ state; int sync; } ;
typedef TYPE_2__ FFFrameSync ;


 int AV_LOG_VERBOSE ;
 unsigned int FFMAX (unsigned int,int ) ;
 scalar_t__ STATE_EOF ;
 int av_assert0 (int) ;
 int av_log (TYPE_2__*,int ,char*,unsigned int) ;
 int framesync_eof (TYPE_2__*) ;

__attribute__((used)) static void framesync_sync_level_update(FFFrameSync *fs)
{
    unsigned i, level = 0;

    for (i = 0; i < fs->nb_in; i++)
        if (fs->in[i].state != STATE_EOF)
            level = FFMAX(level, fs->in[i].sync);
    av_assert0(level <= fs->sync_level);
    if (level < fs->sync_level)
        av_log(fs, AV_LOG_VERBOSE, "Sync level %u\n", level);
    if (level)
        fs->sync_level = level;
    else
        framesync_eof(fs);
}
