
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int type; } ;
typedef TYPE_1__ AVFrameSideData ;
typedef int AVFilterContext ;


 int AV_LOG_INFO ;
 int av_log (int *,int ,char*,int ,int ) ;

__attribute__((used)) static void dump_unknown(AVFilterContext *ctx, AVFrameSideData *sd)
{
    av_log(ctx, AV_LOG_INFO, "unknown side data type: %d, size %d bytes", sd->type, sd->size);
}
