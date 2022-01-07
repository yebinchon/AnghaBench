
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {int channels; int channel_layout; scalar_t__ extradata; int bit_rate; int codec_id; } ;
typedef TYPE_2__ AVStream ;


 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_MP1 ;
 int AV_CODEC_ID_MP2 ;
 int AV_CODEC_ID_MP3 ;
 int AV_RL16 (scalar_t__) ;
 int AV_RL32 (scalar_t__) ;

__attribute__((used)) static void parse_mpeg1waveformatex(AVStream *st)
{

    switch (AV_RL16(st->codecpar->extradata)) {
    case 0x0001 : st->codecpar->codec_id = AV_CODEC_ID_MP1; break;
    case 0x0002 : st->codecpar->codec_id = AV_CODEC_ID_MP2; break;
    case 0x0004 : st->codecpar->codec_id = AV_CODEC_ID_MP3; break;
    }

    st->codecpar->bit_rate = AV_RL32(st->codecpar->extradata + 2);


    switch (AV_RL16(st->codecpar->extradata + 6)) {
    case 1 :
    case 2 :
    case 4 : st->codecpar->channels = 2;
             st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
             break;
    case 8 : st->codecpar->channels = 1;
             st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
             break;
    }
}
