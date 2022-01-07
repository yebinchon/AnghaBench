
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int buf ;
struct TYPE_7__ {int debug; TYPE_1__* internal; } ;
struct TYPE_6__ {TYPE_4__* avctx; } ;
struct TYPE_5__ {int skip_samples; } ;
typedef int GetBitContext ;
typedef TYPE_2__ AACContext ;


 int AV_LOG_DEBUG ;
 int FF_DEBUG_PICT_INFO ;
 int av_log (TYPE_4__*,int ,char*,scalar_t__*) ;
 scalar_t__ get_bits (int *,int) ;
 int skip_bits_long (int *,int) ;
 int sscanf (scalar_t__*,char*,int*,int*) ;

__attribute__((used)) static int decode_fill(AACContext *ac, GetBitContext *gb, int len) {
    uint8_t buf[256];
    int i, major, minor;

    if (len < 13+7*8)
        goto unknown;

    get_bits(gb, 13); len -= 13;

    for(i=0; i+1<sizeof(buf) && len>=8; i++, len-=8)
        buf[i] = get_bits(gb, 8);

    buf[i] = 0;
    if (ac->avctx->debug & FF_DEBUG_PICT_INFO)
        av_log(ac->avctx, AV_LOG_DEBUG, "FILL:%s\n", buf);

    if (sscanf(buf, "libfaac %d.%d", &major, &minor) == 2){
        ac->avctx->internal->skip_samples = 1024;
    }

unknown:
    skip_bits_long(gb, len);

    return 0;
}
