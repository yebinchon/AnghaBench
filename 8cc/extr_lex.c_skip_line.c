
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int readc () ;
 int unreadc (int) ;

__attribute__((used)) static void skip_line() {
    for (;;) {
        int c = readc();
        if (c == EOF)
            return;
        if (c == '\n') {
            unreadc(c);
            return;
        }
    }
}
