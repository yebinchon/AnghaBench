
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_7__ {int properties; TYPE_2__* priv_data; } ;
struct TYPE_5__ {int top_field_first; } ;
struct TYPE_6__ {char* a53_caption; int a53_caption_size; TYPE_1__ mpeg_enc_ctx; } ;
typedef TYPE_2__ Mpeg1Context ;
typedef int GetBitContext ;
typedef TYPE_3__ AVCodecContext ;


 int FF_CODEC_PROPERTY_CLOSED_CAPTIONS ;
 int av_freep (char**) ;
 void* av_malloc (int) ;
 char* av_mallocz (int) ;
 char* ff_reverse ;
 void* get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int init_get_bits (int *,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int mpeg_decode_a53_cc(AVCodecContext *avctx,
                              const uint8_t *p, int buf_size)
{
    Mpeg1Context *s1 = avctx->priv_data;

    if (buf_size >= 6 &&
        p[0] == 'G' && p[1] == 'A' && p[2] == '9' && p[3] == '4' &&
        p[4] == 3 && (p[5] & 0x40)) {

        int cc_count = p[5] & 0x1f;
        if (cc_count > 0 && buf_size >= 7 + cc_count * 3) {
            av_freep(&s1->a53_caption);
            s1->a53_caption_size = cc_count * 3;
            s1->a53_caption = av_malloc(s1->a53_caption_size);
            if (!s1->a53_caption) {
                s1->a53_caption_size = 0;
            } else {
                memcpy(s1->a53_caption, p + 7, s1->a53_caption_size);
            }
            avctx->properties |= FF_CODEC_PROPERTY_CLOSED_CAPTIONS;
        }
        return 1;
    } else if (buf_size >= 2 &&
               p[0] == 0x03 && (p[1]&0x7f) == 0x01) {

        GetBitContext gb;
        int cc_count = 0;
        int i;

        init_get_bits(&gb, p + 2, buf_size - 2);
        cc_count = get_bits(&gb, 5);
        if (cc_count > 0) {
            av_freep(&s1->a53_caption);
            s1->a53_caption_size = cc_count * 3;
            s1->a53_caption = av_mallocz(s1->a53_caption_size);
            if (!s1->a53_caption) {
                s1->a53_caption_size = 0;
            } else {
                uint8_t field, cc1, cc2;
                uint8_t *cap = s1->a53_caption;
                for (i = 0; i < cc_count && get_bits_left(&gb) >= 26; i++) {
                    skip_bits(&gb, 2);
                    field = get_bits(&gb, 2);
                    skip_bits(&gb, 5);
                    cc1 = get_bits(&gb, 8);
                    cc2 = get_bits(&gb, 8);
                    skip_bits(&gb, 1);

                    if (!field) {
                        cap[0] = cap[1] = cap[2] = 0x00;
                    } else {
                        field = (field == 2 ? 1 : 0);
                        if (!s1->mpeg_enc_ctx.top_field_first) field = !field;
                        cap[0] = 0x04 | field;
                        cap[1] = ff_reverse[cc1];
                        cap[2] = ff_reverse[cc2];
                    }
                    cap += 3;
                }
            }
            avctx->properties |= FF_CODEC_PROPERTY_CLOSED_CAPTIONS;
        }
        return 1;
    } else if (buf_size >= 11 &&
               p[0] == 'C' && p[1] == 'C' && p[2] == 0x01 && p[3] == 0xf8) {
        int cc_count = 0;
        int i;


        for (i = 5; i + 6 <= buf_size && ((p[i] & 0xfe) == 0xfe); i += 6)
            cc_count++;

        if (cc_count > 0) {
            av_freep(&s1->a53_caption);
            s1->a53_caption_size = cc_count * 6;
            s1->a53_caption = av_malloc(s1->a53_caption_size);
            if (!s1->a53_caption) {
                s1->a53_caption_size = 0;
            } else {
                uint8_t field1 = !!(p[4] & 0x80);
                uint8_t *cap = s1->a53_caption;
                p += 5;
                for (i = 0; i < cc_count; i++) {
                    cap[0] = (p[0] == 0xff && field1) ? 0xfc : 0xfd;
                    cap[1] = p[1];
                    cap[2] = p[2];
                    cap[3] = (p[3] == 0xff && !field1) ? 0xfc : 0xfd;
                    cap[4] = p[4];
                    cap[5] = p[5];
                    cap += 6;
                    p += 6;
                }
            }
            avctx->properties |= FF_CODEC_PROPERTY_CLOSED_CAPTIONS;
        }
        return 1;
    }
    return 0;
}
