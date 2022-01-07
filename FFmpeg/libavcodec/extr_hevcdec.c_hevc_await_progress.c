
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ threads_type; } ;
struct TYPE_8__ {int tf; } ;
struct TYPE_7__ {int y; } ;
typedef TYPE_1__ Mv ;
typedef TYPE_2__ HEVCFrame ;
typedef TYPE_3__ HEVCContext ;


 int FFMAX (int ,int) ;
 scalar_t__ FF_THREAD_FRAME ;
 int ff_thread_await_progress (int *,int,int ) ;

__attribute__((used)) static void hevc_await_progress(HEVCContext *s, HEVCFrame *ref,
                                const Mv *mv, int y0, int height)
{
    if (s->threads_type == FF_THREAD_FRAME ) {
        int y = FFMAX(0, (mv->y >> 2) + y0 + height + 9);

        ff_thread_await_progress(&ref->tf, y, 0);
    }
}
