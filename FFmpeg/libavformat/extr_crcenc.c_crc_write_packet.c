
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct AVFormatContext {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int size; int data; } ;
struct TYPE_4__ {int crcval; } ;
typedef TYPE_1__ CRCState ;
typedef TYPE_2__ AVPacket ;


 int av_adler32_update (int ,int ,int ) ;

__attribute__((used)) static int crc_write_packet(struct AVFormatContext *s, AVPacket *pkt)
{
    CRCState *crc = s->priv_data;
    crc->crcval = av_adler32_update(crc->crcval, pkt->data, pkt->size);
    return 0;
}
