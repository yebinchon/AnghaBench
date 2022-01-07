
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int height; int width; int format; } ;
struct TYPE_10__ {TYPE_1__** streams; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_8__ {TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int av_image_fill_arrays (int **,int*,int ,int ,int ,int ,int) ;
 int write_picture (TYPE_3__*,int **,int*) ;

__attribute__((used)) static int xv_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    uint8_t *data[4];
    int linesize[4];

    av_image_fill_arrays(data, linesize, pkt->data, par->format,
                         par->width, par->height, 1);
    return write_picture(s, data, linesize);
}
