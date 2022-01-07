
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reachable; } ;
typedef TYPE_1__ Sym ;


 int is_reachable (int ) ;

bool is_sym_reachable(Sym *sym) {
    return is_reachable(sym->reachable);
}
