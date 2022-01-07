
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gb; int last_resync_gb; } ;
struct TYPE_6__ {scalar_t__ gob_start_code_skipped; TYPE_1__ s; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ H261Context ;
typedef int GetBitContext ;


 int align_get_bits (int *) ;
 int get_bits_left (int *) ;
 int h261_decode_gob_header (TYPE_2__*) ;
 scalar_t__ show_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int h261_resync(H261Context *h)
{
    MpegEncContext *const s = &h->s;
    int left, ret;

    if (h->gob_start_code_skipped) {
        ret = h261_decode_gob_header(h);
        if (ret >= 0)
            return 0;
    } else {
        if (show_bits(&s->gb, 15) == 0) {
            ret = h261_decode_gob_header(h);
            if (ret >= 0)
                return 0;
        }

        s->gb = s->last_resync_gb;
        align_get_bits(&s->gb);
        left = get_bits_left(&s->gb);

        for (; left > 15 + 1 + 4 + 5; left -= 8) {
            if (show_bits(&s->gb, 15) == 0) {
                GetBitContext bak = s->gb;

                ret = h261_decode_gob_header(h);
                if (ret >= 0)
                    return 0;

                s->gb = bak;
            }
            skip_bits(&s->gb, 8);
        }
    }

    return -1;
}
