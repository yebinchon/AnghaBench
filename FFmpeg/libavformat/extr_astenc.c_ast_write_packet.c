
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int fbs; } ;
struct TYPE_11__ {int channels; } ;
struct TYPE_10__ {TYPE_1__** streams; TYPE_5__* priv_data; int * pb; } ;
struct TYPE_9__ {int size; int data; } ;
struct TYPE_8__ {scalar_t__ nb_frames; TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;
typedef TYPE_5__ ASTMuxContext ;


 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int ) ;
 int avio_write (int *,int ,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int ast_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    ASTMuxContext *ast = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    int size = pkt->size / par->channels;

    if (s->streams[0]->nb_frames == 0)
        ast->fbs = size;

    ffio_wfourcc(pb, "BLCK");
    avio_wb32(pb, size);


    avio_wb64(pb, 0);
    avio_wb64(pb, 0);
    avio_wb64(pb, 0);

    avio_write(pb, pkt->data, pkt->size);

    return 0;
}
