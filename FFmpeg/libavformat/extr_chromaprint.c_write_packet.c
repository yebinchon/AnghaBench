
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int size; int data; } ;
struct TYPE_6__ {int ctx; } ;
typedef TYPE_1__ ChromaprintMuxContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 scalar_t__ chromaprint_feed (int ,int ,int) ;

__attribute__((used)) static int write_packet(AVFormatContext *s, AVPacket *pkt)
{
    ChromaprintMuxContext *cpr = s->priv_data;
    return chromaprint_feed(cpr->ctx, pkt->data, pkt->size / 2) ? 0 : AVERROR(EINVAL);
}
