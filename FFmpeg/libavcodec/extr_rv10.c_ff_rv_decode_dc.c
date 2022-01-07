
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_7__ {int table; } ;
struct TYPE_6__ {int table; } ;
struct TYPE_5__ {int avctx; int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int AV_LOG_ERROR ;
 int DC_VLC_BITS ;
 int av_log (int ,int ,char*) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 TYPE_3__ rv_dc_chrom ;
 TYPE_2__ rv_dc_lum ;
 int skip_bits (int *,int) ;

int ff_rv_decode_dc(MpegEncContext *s, int n)
{
    int code;

    if (n < 4) {
        code = get_vlc2(&s->gb, rv_dc_lum.table, DC_VLC_BITS, 2);
        if (code < 0) {



            code = get_bits(&s->gb, 7);
            if (code == 0x7c) {
                code = (int8_t) (get_bits(&s->gb, 7) + 1);
            } else if (code == 0x7d) {
                code = -128 + get_bits(&s->gb, 7);
            } else if (code == 0x7e) {
                if (get_bits1(&s->gb) == 0)
                    code = (int8_t) (get_bits(&s->gb, 8) + 1);
                else
                    code = (int8_t) (get_bits(&s->gb, 8));
            } else if (code == 0x7f) {
                skip_bits(&s->gb, 11);
                code = 1;
            }
        } else {
            code -= 128;
        }
    } else {
        code = get_vlc2(&s->gb, rv_dc_chrom.table, DC_VLC_BITS, 2);

        if (code < 0) {
            code = get_bits(&s->gb, 9);
            if (code == 0x1fc) {
                code = (int8_t) (get_bits(&s->gb, 7) + 1);
            } else if (code == 0x1fd) {
                code = -128 + get_bits(&s->gb, 7);
            } else if (code == 0x1fe) {
                skip_bits(&s->gb, 9);
                code = 1;
            } else {
                av_log(s->avctx, AV_LOG_ERROR, "chroma dc error\n");
                return 0xffff;
            }
        } else {
            code -= 128;
        }
    }
    return -code;
}
