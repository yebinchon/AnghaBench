
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int g; int avctx; } ;
typedef TYPE_1__ Jpeg2000DecoderContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int av_log (int ,int ,char*,scalar_t__) ;
 int bytestream2_get_byte (int *) ;
 scalar_t__ bytestream2_tell (int *) ;

__attribute__((used)) static int get_plt(Jpeg2000DecoderContext *s, int n)
{
    int i;
    int v;

    av_log(s->avctx, AV_LOG_DEBUG,
            "PLT marker at pos 0x%X\n", bytestream2_tell(&s->g) - 4);

    if (n < 4)
        return AVERROR_INVALIDDATA;

               bytestream2_get_byte(&s->g);

    for (i = 0; i < n - 3; i++) {
        v = bytestream2_get_byte(&s->g);
    }
    if (v & 0x80)
        return AVERROR_INVALIDDATA;

    return 0;
}
