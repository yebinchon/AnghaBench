
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gb; scalar_t__** temp; } ;
typedef TYPE_1__ HYuvContext ;


 scalar_t__ BITS_LEFT (int ,int *) ;
 int CLOSE_READER (int ,int *) ;
 int OPEN_READER (int ,int *) ;
 int READ_2PIX (scalar_t__,scalar_t__,int) ;
 int get_bits_left (int *) ;
 int re ;

__attribute__((used)) static void decode_422_bitstream(HYuvContext *s, int count)
{
    int i, icount;
    OPEN_READER(re, &s->gb);
    count /= 2;

    icount = get_bits_left(&s->gb) / (32 * 4);
    if (count >= icount) {
        for (i = 0; i < icount; i++) {
            READ_2PIX(s->temp[0][2 * i], s->temp[1][i], 1);
            READ_2PIX(s->temp[0][2 * i + 1], s->temp[2][i], 2);
        }
        for (; i < count && BITS_LEFT(re, &s->gb) > 0; i++) {
            READ_2PIX(s->temp[0][2 * i ], s->temp[1][i], 1);
            if (BITS_LEFT(re, &s->gb) <= 0) break;
            READ_2PIX(s->temp[0][2 * i + 1], s->temp[2][i], 2);
        }
        for (; i < count; i++)
            s->temp[0][2 * i ] = s->temp[1][i] =
            s->temp[0][2 * i + 1] = s->temp[2][i] = 0;
    } else {
        for (i = 0; i < count; i++) {
            READ_2PIX(s->temp[0][2 * i], s->temp[1][i], 1);
            READ_2PIX(s->temp[0][2 * i + 1], s->temp[2][i], 2);
        }
    }
    CLOSE_READER(re, &s->gb);
}
