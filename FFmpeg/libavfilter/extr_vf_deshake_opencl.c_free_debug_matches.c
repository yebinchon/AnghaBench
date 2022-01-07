
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int debug_matches; } ;
struct TYPE_5__ {int matches; } ;
typedef TYPE_1__ DebugMatches ;
typedef TYPE_2__ AbsoluteFrameMotion ;


 int av_fifo_freep (int *) ;
 int av_fifo_generic_read (int ,TYPE_1__*,int,int *) ;
 scalar_t__ av_fifo_size (int ) ;
 int av_freep (int *) ;

__attribute__((used)) static void free_debug_matches(AbsoluteFrameMotion *afm) {
    DebugMatches dm;

    if (!afm->debug_matches) {
        return;
    }

    while (av_fifo_size(afm->debug_matches) > 0) {
        av_fifo_generic_read(
            afm->debug_matches,
            &dm,
            sizeof(DebugMatches),
            ((void*)0)
        );

        av_freep(&dm.matches);
    }

    av_fifo_freep(&afm->debug_matches);
}
