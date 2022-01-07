
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int len; int code; } ;
typedef TYPE_1__ HuffEntry ;


 int ff_ut_huff_cmp_len ;
 int huff_cmp_sym ;
 int qsort (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static void calculate_codes(HuffEntry *he)
{
    int last, i;
    uint32_t code;

    qsort(he, 256, sizeof(*he), ff_ut_huff_cmp_len);

    last = 255;
    while (he[last].len == 255 && last)
        last--;

    code = 1;
    for (i = last; i >= 0; i--) {
        he[i].code = code >> (32 - he[i].len);
        code += 0x80000000u >> (he[i].len - 1);
    }

    qsort(he, 256, sizeof(*he), huff_cmp_sym);
}
