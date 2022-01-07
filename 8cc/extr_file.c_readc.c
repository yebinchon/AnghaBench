
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int close_file (int ) ;
 int files ;
 int get () ;
 int unreadc (int) ;
 int vec_len (int ) ;
 int vec_pop (int ) ;

int readc() {
    for (;;) {
        int c = get();
        if (c == EOF) {
            if (vec_len(files) == 1)
                return c;
            close_file(vec_pop(files));
            continue;
        }
        if (c != '\\')
            return c;
        int c2 = get();
        if (c2 == '\n')
            continue;
        unreadc(c2);
        return c;
    }
}
