
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ num_params; scalar_t__ ret_type; scalar_t__ has_varargs; TYPE_2__* params; } ;
struct TYPE_8__ {scalar_t__ kind; TYPE_1__ func; int pos; } ;
struct TYPE_7__ {char* name; scalar_t__ type; } ;
typedef TYPE_2__ FuncParam ;
typedef TYPE_3__ Decl ;


 scalar_t__ DECL_FUNC ;
 int assert (int) ;
 int buf_printf (char*,char*,...) ;
 int gen_sync_pos (int ) ;
 int genlnf (char*,char*) ;
 int get_gen_name (TYPE_3__*) ;
 int get_resolved_type (scalar_t__) ;
 int incomplete_decay (int ) ;
 char* type_to_cdecl (int ,char*) ;

void gen_func_decl(Decl *decl) {
    assert(decl->kind == DECL_FUNC);
    char *result = ((void*)0);
    buf_printf(result, "%s(", get_gen_name(decl));
    if (decl->func.num_params == 0) {
        buf_printf(result, "void");
    } else {
        for (size_t i = 0; i < decl->func.num_params; i++) {
            FuncParam param = decl->func.params[i];
            if (i != 0) {
                buf_printf(result, ", ");
            }
            buf_printf(result, "%s", type_to_cdecl(incomplete_decay(get_resolved_type(param.type)), param.name));
        }
    }
    if (decl->func.has_varargs) {
        buf_printf(result, ", ...");
    }
    buf_printf(result, ")");
    gen_sync_pos(decl->pos);
    if (decl->func.ret_type) {
        genlnf("%s", type_to_cdecl(incomplete_decay(get_resolved_type(decl->func.ret_type)), result));
    } else {
        genlnf("void %s", result);
    }
}
