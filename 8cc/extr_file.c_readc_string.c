
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* p; char last; } ;
typedef TYPE_1__ File ;


 char EOF ;

__attribute__((used)) static int readc_string(File *f) {
    int c;
    if (*f->p == '\0') {
        c = (f->last == '\n' || f->last == EOF) ? EOF : '\n';
    } else if (*f->p == '\r') {
        f->p++;
        if (*f->p == '\n')
            f->p++;
        c = '\n';
    } else {
        c = *f->p++;
    }
    f->last = c;
    return c;
}
