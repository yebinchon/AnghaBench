
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buflen; int* buf; int column; int line; } ;
typedef TYPE_1__ File ;


 int EOF ;
 int assert (int) ;
 int files ;
 TYPE_1__* vec_tail (int ) ;

void unreadc(int c) {
    if (c == EOF)
        return;
    File *f = vec_tail(files);
    assert(f->buflen < sizeof(f->buf) / sizeof(f->buf[0]));
    f->buf[f->buflen++] = c;
    if (c == '\n') {
        f->column = 1;
        f->line--;
    } else {
        f->column--;
    }
}
