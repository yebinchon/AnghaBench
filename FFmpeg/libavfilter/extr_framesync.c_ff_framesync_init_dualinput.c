
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__** inputs; } ;
struct TYPE_11__ {TYPE_2__* in; } ;
struct TYPE_10__ {int sync; void* after; int before; int time_base; } ;
struct TYPE_9__ {int time_base; } ;
typedef TYPE_3__ FFFrameSync ;
typedef TYPE_4__ AVFilterContext ;


 void* EXT_INFINITY ;
 int EXT_NULL ;
 int EXT_STOP ;
 int ff_framesync_init (TYPE_3__*,TYPE_4__*,int) ;

int ff_framesync_init_dualinput(FFFrameSync *fs, AVFilterContext *parent)
{
    int ret;

    ret = ff_framesync_init(fs, parent, 2);
    if (ret < 0)
        return ret;
    fs->in[0].time_base = parent->inputs[0]->time_base;
    fs->in[1].time_base = parent->inputs[1]->time_base;
    fs->in[0].sync = 2;
    fs->in[0].before = EXT_STOP;
    fs->in[0].after = EXT_INFINITY;
    fs->in[1].sync = 1;
    fs->in[1].before = EXT_NULL;
    fs->in[1].after = EXT_INFINITY;
    return 0;
}
