
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {scalar_t__* block_last_index; } ;
typedef TYPE_1__ MpegEncContext ;



__attribute__((used)) static inline int get_cbp(MpegEncContext *s, int16_t block[6][64])
{
    int i, cbp;
    cbp = 0;
    for (i = 0; i < 6; i++)
        if (s->block_last_index[i] >= 0)
            cbp |= 1 << (5 - i);
    return cbp;
}
