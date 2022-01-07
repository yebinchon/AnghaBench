
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* buf; int buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RB32 (int*) ;
 scalar_t__ EBML_ID_HEADER ;
 int FF_ARRAY_ELEMS (int *) ;
 int * matroska_doctypes ;
 int memcmp (int*,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static int matroska_probe(const AVProbeData *p)
{
    uint64_t total = 0;
    int len_mask = 0x80, size = 1, n = 1, i;


    if (AV_RB32(p->buf) != EBML_ID_HEADER)
        return 0;


    total = p->buf[4];
    while (size <= 8 && !(total & len_mask)) {
        size++;
        len_mask >>= 1;
    }
    if (size > 8)
        return 0;
    total &= (len_mask - 1);
    while (n < size)
        total = (total << 8) | p->buf[4 + n++];

    if (total + 1 == 1ULL << (7 * size)){

        total = p->buf_size - 4 - size;
    } else {

        if (p->buf_size < 4 + size + total)
            return 0;
    }





    for (i = 0; i < FF_ARRAY_ELEMS(matroska_doctypes); i++) {
        size_t probelen = strlen(matroska_doctypes[i]);
        if (total < probelen)
            continue;
        for (n = 4 + size; n <= 4 + size + total - probelen; n++)
            if (!memcmp(p->buf + n, matroska_doctypes[i], probelen))
                return AVPROBE_SCORE_MAX;
    }


    return AVPROBE_SCORE_EXTENSION;
}
