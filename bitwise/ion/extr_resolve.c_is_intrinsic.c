
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int intrinsic; } ;
struct TYPE_7__ {TYPE_1__ func; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_4__* type; } ;
typedef TYPE_2__ Sym ;


 scalar_t__ SYM_FUNC ;
 int assert (int ) ;
 int is_func_type (TYPE_4__*) ;

bool is_intrinsic(Sym *sym) {
    if (!sym || sym->kind != SYM_FUNC) {
        return 0;
    }
    assert(is_func_type(sym->type));
    return sym->type->func.intrinsic;
}
