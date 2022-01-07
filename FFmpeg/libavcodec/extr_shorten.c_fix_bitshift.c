
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int int32_t ;
struct TYPE_3__ {int bitshift; int blocksize; } ;
typedef TYPE_1__ ShortenContext ;



__attribute__((used)) static void fix_bitshift(ShortenContext *s, int32_t *buffer)
{
    int i;

    if (s->bitshift == 32) {
        for (i = 0; i < s->blocksize; i++)
            buffer[i] = 0;
    } else if (s->bitshift != 0) {
        for (i = 0; i < s->blocksize; i++)
            buffer[i] *= 1U << s->bitshift;
    }
}
