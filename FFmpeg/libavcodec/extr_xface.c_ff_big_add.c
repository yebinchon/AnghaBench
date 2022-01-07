
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int* words; int nb_words; } ;
typedef TYPE_1__ BigInt ;


 int XFACE_BITSPERWORD ;
 int XFACE_MAX_WORDS ;
 int XFACE_WORDMASK ;
 int av_assert0 (int) ;

void ff_big_add(BigInt *b, uint8_t a)
{
    int i;
    uint8_t *w;
    uint16_t c;

    a &= XFACE_WORDMASK;
    if (a == 0)
        return;
    w = b->words;
    c = a;
    for (i = 0; i < b->nb_words && c; i++) {
        c += *w;
        *w++ = c & XFACE_WORDMASK;
        c >>= XFACE_BITSPERWORD;
    }
    if (i == b->nb_words && c) {
        av_assert0(b->nb_words < XFACE_MAX_WORDS);
        b->nb_words++;
        *w = c & XFACE_WORDMASK;
    }
}
