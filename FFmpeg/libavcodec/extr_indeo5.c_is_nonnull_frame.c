
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ frame_type; } ;
typedef TYPE_1__ IVI45DecContext ;


 scalar_t__ FRAMETYPE_NULL ;

__attribute__((used)) static int is_nonnull_frame(IVI45DecContext *ctx)
{
    return ctx->frame_type != FRAMETYPE_NULL;
}
