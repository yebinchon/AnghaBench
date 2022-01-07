
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gb; int ** temp; } ;
typedef TYPE_1__ HYuvContext ;


 scalar_t__ BITS_LEFT (int ,int *) ;
 int CLOSE_READER (int ,int *) ;
 int OPEN_READER (int ,int *) ;
 int READ_2PIX (int ,int ,int ) ;
 int get_bits_left (int *) ;
 int re ;

__attribute__((used)) static void decode_gray_bitstream(HYuvContext *s, int count)
{
    int i;
    OPEN_READER(re, &s->gb);
    count /= 2;

    if (count >= (get_bits_left(&s->gb)) / (32 * 2)) {
        for (i = 0; i < count && BITS_LEFT(re, &s->gb) > 0; i++) {
            READ_2PIX(s->temp[0][2 * i], s->temp[0][2 * i + 1], 0);
        }
    } else {
        for (i = 0; i < count; i++) {
            READ_2PIX(s->temp[0][2 * i], s->temp[0][2 * i + 1], 0);
        }
    }
    CLOSE_READER(re, &s->gb);
}
