
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int MaxFALL; int MaxCLL; } ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ AVPacketSideData ;
typedef TYPE_2__ AVContentLightMetadata ;


 int AV_LOG_INFO ;
 int av_log (void*,int ,char*,int ,int ) ;

__attribute__((used)) static void dump_content_light_metadata(void *ctx, AVPacketSideData* sd)
{
    AVContentLightMetadata* metadata = (AVContentLightMetadata*)sd->data;
    av_log(ctx, AV_LOG_INFO, "Content Light Level Metadata, "
           "MaxCLL=%d, MaxFALL=%d",
           metadata->MaxCLL, metadata->MaxFALL);
}
