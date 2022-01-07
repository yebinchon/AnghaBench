
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int stream_index; } ;
struct TYPE_6__ {int * frame; int frame_size; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVPacket ;


 int av_freep (int **) ;
 int av_packet_from_data (TYPE_2__*,int *,int ) ;

__attribute__((used)) static int rfc4175_finalize_packet(PayloadContext *data, AVPacket *pkt,
                                   int stream_index)
{
   int ret;

   pkt->stream_index = stream_index;
   ret = av_packet_from_data(pkt, data->frame, data->frame_size);
   if (ret < 0) {
       av_freep(&data->frame);
   }

   data->frame = ((void*)0);

   return ret;
}
