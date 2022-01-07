
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sample_rate; scalar_t__ channels; scalar_t__ chan_config; } ;
typedef TYPE_1__ MPEG4AudioConfig ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ MKBETAG (char,char,char,char) ;
 int av_log (int *,int ,char*,scalar_t__) ;
 scalar_t__ get_bits (int *,int) ;
 int get_bits_left (int *) ;
 scalar_t__ get_bits_long (int *,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int parse_config_ALS(GetBitContext *gb, MPEG4AudioConfig *c)
{
    if (get_bits_left(gb) < 112)
        return AVERROR_INVALIDDATA;

    if (get_bits_long(gb, 32) != MKBETAG('A','L','S','\0'))
        return AVERROR_INVALIDDATA;



    c->sample_rate = get_bits_long(gb, 32);

    if (c->sample_rate <= 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Invalid sample rate %d\n", c->sample_rate);
        return AVERROR_INVALIDDATA;
    }


    skip_bits_long(gb, 32);


    c->chan_config = 0;
    c->channels = get_bits(gb, 16) + 1;

    return 0;
}
