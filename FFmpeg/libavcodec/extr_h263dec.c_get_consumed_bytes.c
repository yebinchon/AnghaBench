
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ last_index; } ;
struct TYPE_7__ {TYPE_1__ parse_context; TYPE_2__* avctx; scalar_t__ divx_packed; int gb; } ;
struct TYPE_6__ {int flags; scalar_t__ hwaccel; } ;
typedef TYPE_3__ MpegEncContext ;


 int AV_CODEC_FLAG_TRUNCATED ;
 int get_bits_count (int *) ;

__attribute__((used)) static int get_consumed_bytes(MpegEncContext *s, int buf_size)
{
    int pos = (get_bits_count(&s->gb) + 7) >> 3;

    if (s->divx_packed || s->avctx->hwaccel) {


        return buf_size;
    } else if (s->avctx->flags & AV_CODEC_FLAG_TRUNCATED) {
        pos -= s->parse_context.last_index;

        if (pos < 0)
            pos = 0;
        return pos;
    } else {

        if (pos == 0)
            pos = 1;

        if (pos + 10 > buf_size)
            pos = buf_size;

        return pos;
    }
}
