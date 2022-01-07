
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t buflen; int* buf; int column; int line; scalar_t__ file; } ;
typedef TYPE_1__ File ;


 int EOF ;
 int files ;
 int readc_file (TYPE_1__*) ;
 int readc_string (TYPE_1__*) ;
 TYPE_1__* vec_tail (int ) ;

__attribute__((used)) static int get() {
    File *f = vec_tail(files);
    int c;
    if (f->buflen > 0) {
        c = f->buf[--f->buflen];
    } else if (f->file) {
        c = readc_file(f);
    } else {
        c = readc_string(f);
    }
    if (c == '\n') {
        f->line++;
        f->column = 1;
    } else if (c != EOF) {
        f->column++;
    }
    return c;
}
