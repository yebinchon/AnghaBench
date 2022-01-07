
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int eof; TYPE_1__* parent; scalar_t__ frame_ready; } ;
struct TYPE_4__ {int * outputs; } ;
typedef TYPE_2__ FFFrameSync ;


 int AVERROR_EOF ;
 int AV_NOPTS_VALUE ;
 int ff_outlink_set_status (int ,int ,int ) ;

__attribute__((used)) static void framesync_eof(FFFrameSync *fs)
{
    fs->eof = 1;
    fs->frame_ready = 0;
    ff_outlink_set_status(fs->parent->outputs[0], AVERROR_EOF, AV_NOPTS_VALUE);
}
