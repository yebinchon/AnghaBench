
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int num_args; int pos; TYPE_1__* args; } ;
struct TYPE_8__ {int ull; } ;
struct TYPE_9__ {TYPE_2__ val; } ;
struct TYPE_7__ {int expr; } ;
typedef TYPE_3__ Operand ;
typedef TYPE_4__ Note ;


 int fatal_error (int ,char*) ;
 TYPE_3__ resolve_const_expr (int ) ;

void resolve_static_assert(Note note) {
    if (note.num_args != 1) {
        fatal_error(note.pos, "#static_assert takes 1 argument");
    }
    Operand operand = resolve_const_expr(note.args[0].expr);
    if (!operand.val.ull) {
        fatal_error(note.pos, "#static_assert failed");
    }
}
