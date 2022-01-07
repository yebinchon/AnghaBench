
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_15__ {scalar_t__ size; scalar_t__ data; } ;
struct TYPE_11__ {scalar_t__ mDataByteSize; } ;
struct TYPE_14__ {TYPE_8__ in_pkt; TYPE_2__ pkt_desc; int new_in_pkt; scalar_t__ eof; } ;
struct TYPE_13__ {TYPE_5__* priv_data; } ;
struct TYPE_12__ {int mNumberBuffers; TYPE_1__* mBuffers; } ;
struct TYPE_10__ {scalar_t__ mData; scalar_t__ mDataByteSize; scalar_t__ mNumberChannels; } ;
typedef int OSStatus ;
typedef TYPE_2__ AudioStreamPacketDescription ;
typedef int AudioConverterRef ;
typedef TYPE_3__ AudioBufferList ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ ATDecodeContext ;


 int av_packet_move_ref (TYPE_8__*,int *) ;
 int av_packet_unref (TYPE_8__*) ;

__attribute__((used)) static OSStatus ffat_decode_callback(AudioConverterRef converter, UInt32 *nb_packets,
                                     AudioBufferList *data,
                                     AudioStreamPacketDescription **packets,
                                     void *inctx)
{
    AVCodecContext *avctx = inctx;
    ATDecodeContext *at = avctx->priv_data;

    if (at->eof) {
        *nb_packets = 0;
        if (packets) {
            *packets = &at->pkt_desc;
            at->pkt_desc.mDataByteSize = 0;
        }
        return 0;
    }

    av_packet_unref(&at->in_pkt);
    av_packet_move_ref(&at->in_pkt, &at->new_in_pkt);

    if (!at->in_pkt.data) {
        *nb_packets = 0;
        return 1;
    }

    data->mNumberBuffers = 1;
    data->mBuffers[0].mNumberChannels = 0;
    data->mBuffers[0].mDataByteSize = at->in_pkt.size;
    data->mBuffers[0].mData = at->in_pkt.data;
    *nb_packets = 1;

    if (packets) {
        *packets = &at->pkt_desc;
        at->pkt_desc.mDataByteSize = at->in_pkt.size;
    }

    return 0;
}
