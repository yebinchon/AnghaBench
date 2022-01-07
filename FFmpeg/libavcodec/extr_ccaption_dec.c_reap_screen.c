
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_4__ {void* end_time; void* startv_time; void* start_time; } ;
typedef TYPE_1__ CCaptionSubContext ;


 int capture_screen (TYPE_1__*) ;

__attribute__((used)) static int reap_screen(CCaptionSubContext *ctx, int64_t pts)
{
    ctx->start_time = ctx->startv_time;
    ctx->startv_time = pts;
    ctx->end_time = pts;
    return capture_screen(ctx);
}
