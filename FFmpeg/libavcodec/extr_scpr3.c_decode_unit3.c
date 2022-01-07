
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {int type; int size; int* symbols; int cntsum; int dectab; int cnts; int freqs1; scalar_t__* freqs; } ;
struct TYPE_14__ {int gb; int rc; } ;
typedef TYPE_1__ SCPRContext ;
typedef int RangeCoder ;
typedef TYPE_2__ PixelModel3 ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_byte (int *) ;
 int decode3 (int *,int *,int ,int ) ;
 int decode_adaptive45 (TYPE_2__*,int,int*,int *,int *,int*,int) ;
 int decode_adaptive6 (TYPE_2__*,int,int*,int *,int *) ;
 int decode_static1 (TYPE_2__*,int) ;
 int decode_static2 (TYPE_2__*,int) ;
 int decode_static3 (TYPE_2__*,int) ;
 int decode_value3 (TYPE_1__*,int,int*,scalar_t__*,int ,int ,int ,int*) ;
 int sync_code3 (int *,int *) ;
 int update_model4_to_5 (TYPE_2__*,int) ;
 int update_model5_to_6 (TYPE_2__*,int) ;
 int update_model6_to_7 (TYPE_2__*) ;

__attribute__((used)) static int decode_unit3(SCPRContext *s, PixelModel3 *m, uint32_t code, uint32_t *value)
{
    GetByteContext *gb = &s->gb;
    RangeCoder *rc = &s->rc;
    uint16_t a = 0, b = 0;
    uint32_t param;
    int type;

    type = m->type;
    switch (type) {
    case 0:
        *value = bytestream2_get_byte(&s->gb);
        m->type = 1;
        m->size = 1;
        m->symbols[0] = *value;
        sync_code3(gb, rc);
        break;
    case 1:
        *value = bytestream2_get_byte(&s->gb);
        decode_static1(m, *value);
        sync_code3(gb, rc);
        break;
    case 2:
        *value = bytestream2_get_byte(&s->gb);
        decode_static2(m, *value);
        sync_code3(gb, rc);
        break;
    case 3:
        *value = bytestream2_get_byte(&s->gb);
        decode_static3(m, *value);
        sync_code3(gb, rc);
        break;
    case 4:
        param = m->freqs[0] + m->freqs[1] + m->freqs[2] + m->freqs[3] + 256 - m->size;
        if (!decode_adaptive45(m, code, value, &a, &b, &param, 4))
            update_model4_to_5(m, *value);
        decode3(gb, rc, a, b);
        sync_code3(gb, rc);
        break;
    case 5:
        if (!decode_adaptive45(m, code, value, &a, &b, &m->cntsum, 16))
            update_model5_to_6(m, *value);
        decode3(gb, rc, a, b);
        sync_code3(gb, rc);
        break;
    case 6:
        if (!decode_adaptive6(m, code, value, &a, &b)) {
            update_model6_to_7(m);
        }
        decode3(gb, rc, a, b);
        sync_code3(gb, rc);
        break;
    case 7:
        return decode_value3(s, 255, &m->cntsum,
                             m->freqs, m->freqs1,
                             m->cnts, m->dectab, value);
    }

    if (*value > 255)
        return AVERROR_INVALIDDATA;

    return 0;
}
