
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* low_nibble; int srcptr; } ;
typedef TYPE_1__ YopDecContext ;



__attribute__((used)) static uint8_t yop_get_next_nibble(YopDecContext *s)
{
    int ret;

    if (s->low_nibble) {
        ret = *s->low_nibble & 0xf;
        s->low_nibble = ((void*)0);
    }else {
        s->low_nibble = s->srcptr++;
        ret = *s->low_nibble >> 4;
    }
    return ret;
}
