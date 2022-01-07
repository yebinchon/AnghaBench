
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; int* mv; } ;
typedef TYPE_1__ FourXContext ;


 int** mv ;

__attribute__((used)) static void init_mv(FourXContext *f, int linesize)
{
    int i;

    for (i = 0; i < 256; i++) {
        if (f->version > 1)
            f->mv[i] = mv[i][0] + mv[i][1] * linesize / 2;
        else
            f->mv[i] = (i & 15) - 8 + ((i >> 4) - 8) * linesize / 2;
    }
}
