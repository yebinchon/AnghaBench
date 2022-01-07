
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * class; } ;
typedef TYPE_1__ FFFrameSync ;


 int av_opt_set_defaults (TYPE_1__*) ;
 int framesync_class ;

void ff_framesync_preinit(FFFrameSync *fs)
{
    if (fs->class)
        return;
    fs->class = &framesync_class;
    av_opt_set_defaults(fs);
}
