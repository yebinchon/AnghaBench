
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
 int* mul_2x11 ;
 int set_pos (TYPE_1__*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int t37(InterplayACMContext *s, unsigned ind, unsigned col)
{
    GetBitContext *gb = &s->gb;
    unsigned i, b;
    int n1, n2;
    for (i = 0; i < s->rows; i++) {

        b = get_bits(gb, 7);
        if (b > 120) {
            av_log(((void*)0), AV_LOG_ERROR, "Too large b = %d > 120\n", b);
            return AVERROR_INVALIDDATA;
        }

        n1 = (mul_2x11[b] & 0x0F) - 5;
        n2 = ((mul_2x11[b] >> 4) & 0x0F) - 5;

        set_pos(s, i++, col, n1);
        if (i >= s->rows)
            break;
        set_pos(s, i, col, n2);
    }
    return 0;
}
