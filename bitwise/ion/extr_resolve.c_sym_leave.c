
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sym ;


 int * local_syms_end ;

void sym_leave(Sym *sym) {
    local_syms_end = sym;
}
