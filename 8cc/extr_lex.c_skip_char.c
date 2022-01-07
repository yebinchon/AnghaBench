
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 char readc () ;

__attribute__((used)) static void skip_char() {
    if (readc() == '\\')
        readc();
    int c = readc();
    while (c != EOF && c != '\'')
        c = readc();
}
