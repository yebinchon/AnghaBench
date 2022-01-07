
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* int64_t ;
typedef int data ;
struct TYPE_5__ {int size; int stream_index; scalar_t__ duration; void* dts; void* pts; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFormatContext ;


 int av_init_packet (TYPE_1__*) ;
 int av_packet_unref (TYPE_1__*) ;
 int mov_write_single_packet (int *,TYPE_1__*) ;

__attribute__((used)) static int mov_write_subtitle_end_packet(AVFormatContext *s,
                                         int stream_index,
                                         int64_t dts) {
    AVPacket end;
    uint8_t data[2] = {0};
    int ret;

    av_init_packet(&end);
    end.size = sizeof(data);
    end.data = data;
    end.pts = dts;
    end.dts = dts;
    end.duration = 0;
    end.stream_index = stream_index;

    ret = mov_write_single_packet(s, &end);
    av_packet_unref(&end);

    return ret;
}
