
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int param_written; } ;
typedef TYPE_2__ VocEncContext ;
struct TYPE_12__ {int codec_tag; int sample_rate; int bits_per_coded_sample; int channels; } ;
struct TYPE_11__ {TYPE_1__** streams; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int size; int data; } ;
struct TYPE_8__ {TYPE_5__* codecpar; } ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVCodecParameters ;


 int VOC_TYPE_EXTENDED ;
 int VOC_TYPE_NEW_VOICE_DATA ;
 int VOC_TYPE_VOICE_DATA ;
 int VOC_TYPE_VOICE_DATA_CONT ;
 int avio_w8 (int *,int) ;
 int avio_wl16 (int *,int) ;
 int avio_wl24 (int *,int) ;
 int avio_wl32 (int *,int) ;
 int avio_write (int *,int ,int) ;

__attribute__((used)) static int voc_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    VocEncContext *voc = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    AVIOContext *pb = s->pb;

    if (!voc->param_written) {
        if (par->codec_tag > 3) {
            avio_w8(pb, VOC_TYPE_NEW_VOICE_DATA);
            avio_wl24(pb, pkt->size + 12);
            avio_wl32(pb, par->sample_rate);
            avio_w8(pb, par->bits_per_coded_sample);
            avio_w8(pb, par->channels);
            avio_wl16(pb, par->codec_tag);
            avio_wl32(pb, 0);
        } else {
            if (s->streams[0]->codecpar->channels > 1) {
                avio_w8(pb, VOC_TYPE_EXTENDED);
                avio_wl24(pb, 4);
                avio_wl16(pb, 65536-(256000000 + par->sample_rate*par->channels/2)/(par->sample_rate*par->channels));
                avio_w8(pb, par->codec_tag);
                avio_w8(pb, par->channels - 1);
            }
            avio_w8(pb, VOC_TYPE_VOICE_DATA);
            avio_wl24(pb, pkt->size + 2);
            avio_w8(pb, 256 - (1000000 + par->sample_rate/2) / par->sample_rate);
            avio_w8(pb, par->codec_tag);
        }
        voc->param_written = 1;
    } else {
        avio_w8(pb, VOC_TYPE_VOICE_DATA_CONT);
        avio_wl24(pb, pkt->size);
    }

    avio_write(pb, pkt->data, pkt->size);
    return 0;
}
