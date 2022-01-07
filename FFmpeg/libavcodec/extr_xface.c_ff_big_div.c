
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int nb_words; int* words; } ;
typedef TYPE_1__ BigInt ;


 int XFACE_BITSPERWORD ;
 int XFACE_WORDMASK ;

void ff_big_div(BigInt *b, uint8_t a, uint8_t *r)
{
    int i;
    uint8_t *w;
    uint16_t c, d;

    a &= XFACE_WORDMASK;
    if (a == 1 || b->nb_words == 0) {
        *r = 0;
        return;
    }


    if (a == 0) {
        i = --b->nb_words;
        w = b->words;
        *r = *w;
        while (i--) {
            *w = *(w + 1);
            w++;
        }
        *w = 0;
        return;
    }
    i = b->nb_words;
    w = b->words + i;
    c = 0;
    while (i--) {
        c <<= XFACE_BITSPERWORD;
        c += *--w;
        d = c / (uint16_t)a;
        c = c % (uint16_t)a;
        *w = d & XFACE_WORDMASK;
    }
    *r = c;
    if (b->words[b->nb_words - 1] == 0)
        b->nb_words--;
}
