
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ VC_CONTAINER_FOURCC_T ;
struct TYPE_2__ {scalar_t__ codec; int batch; } ;


 TYPE_1__* mp4_codec_mapping ;

__attribute__((used)) static bool codec_needs_batch_mode(VC_CONTAINER_FOURCC_T codec)
{
   int i;
   for(i = 0; mp4_codec_mapping[i].codec; i++ )
      if(mp4_codec_mapping[i].codec == codec) break;
   return mp4_codec_mapping[i].batch;
}
