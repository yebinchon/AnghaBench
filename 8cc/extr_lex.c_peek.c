
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readc () ;
 int unreadc (int) ;

__attribute__((used)) static int peek() {
    int r = readc();
    unreadc(r);
    return r;
}
