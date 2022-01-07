
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_size; int channel_config; size_t samplerate_index; int bitrate_index; int pb; scalar_t__ lfe_channel; } ;
typedef TYPE_1__ DCAEncContext ;


 int SUBBAND_SAMPLES ;
 int* bitstream_sfreq ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void put_frame_header(DCAEncContext *c)
{

    put_bits(&c->pb, 16, 0x7ffe);
    put_bits(&c->pb, 16, 0x8001);


    put_bits(&c->pb, 1, 1);


    put_bits(&c->pb, 5, 31);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 7, SUBBAND_SAMPLES - 1);


    put_bits(&c->pb, 14, c->frame_size - 1);


    put_bits(&c->pb, 6, c->channel_config);


    put_bits(&c->pb, 4, bitstream_sfreq[c->samplerate_index]);


    put_bits(&c->pb, 5, c->bitrate_index);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 3, 0);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 2, c->lfe_channel ? 2 : 0);


    put_bits(&c->pb, 1, 1);



    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 4, 7);


    put_bits(&c->pb, 2, 0);


    put_bits(&c->pb, 3, 0);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 1, 0);


    put_bits(&c->pb, 4, 0);
}
