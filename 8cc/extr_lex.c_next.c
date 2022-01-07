
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readc () ;
 int unreadc (int) ;

__attribute__((used)) static bool next(int expect) {
    int c = readc();
    if (c == expect)
        return 1;
    unreadc(c);
    return 0;
}
