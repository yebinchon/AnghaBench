
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int rows; int gb; } ;
typedef TYPE_1__ InterplayACMContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,unsigned int) ;
 unsigned int get_bits (int *,int) ;
 int* mul_3x5 ;
 int set_pos (TYPE_1__*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int t27(InterplayACMContext *s, unsigned ind, unsigned col)
{
    GetBitContext *gb = &s->gb;
    unsigned i, b;
    int n1, n2, n3;

    for (i = 0; i < s->rows; i++) {

        b = get_bits(gb, 7);
        if (b > 124) {
            av_log(((void*)0), AV_LOG_ERROR, "Too large b = %d > 124\n", b);
            return AVERROR_INVALIDDATA;
        }

        n1 = (mul_3x5[b] & 0x0F) - 2;
        n2 = ((mul_3x5[b] >> 4) & 0x0F) - 2;
        n3 = ((mul_3x5[b] >> 8) & 0x0F) - 2;

        set_pos(s, i++, col, n1);
        if (i >= s->rows)
            break;
        set_pos(s, i++, col, n2);
        if (i >= s->rows)
            break;
        set_pos(s, i, col, n3);
    }
    return 0;
}
