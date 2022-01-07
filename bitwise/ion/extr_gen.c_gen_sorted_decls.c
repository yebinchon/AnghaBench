
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int name; int type; } ;
typedef TYPE_2__ TypeField ;
struct TYPE_9__ {size_t num_fields; TYPE_2__* fields; } ;
struct TYPE_11__ {scalar_t__ reachable; TYPE_1__ aggregate; int typeid; } ;
typedef TYPE_3__ Type ;


 scalar_t__ REACHABLE_NATURAL ;
 size_t buf_len (TYPE_3__**) ;
 int gen_decl (TYPE_3__*) ;
 int gen_indent ;
 int genlnf (char*,...) ;
 int is_tuple_reachable (TYPE_3__*) ;
 TYPE_3__** sorted_syms ;
 TYPE_3__** tuple_types ;
 int type_to_cdecl (int ,int ) ;

void gen_sorted_decls(void) {
    for (int i = 0; i < buf_len(tuple_types); i++) {
        Type *type = tuple_types[i];
        if (!is_tuple_reachable(type)) {
            continue;
        }
        genlnf("struct tuple%d {", type->typeid);
        gen_indent++;
        for (size_t i = 0; i < type->aggregate.num_fields; i++) {
            TypeField field = type->aggregate.fields[i];
            genlnf("%s;", type_to_cdecl(field.type, field.name));
        }
        gen_indent--;
        genlnf("};");
    }
    for (size_t i = 0; i < buf_len(sorted_syms); i++) {
        if (sorted_syms[i]->reachable == REACHABLE_NATURAL) {
            gen_decl(sorted_syms[i]);
        }
    }
}
