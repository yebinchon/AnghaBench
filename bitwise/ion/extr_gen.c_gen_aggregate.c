
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; int aggregate; scalar_t__ is_incomplete; } ;
typedef TYPE_1__ Decl ;


 scalar_t__ DECL_STRUCT ;
 scalar_t__ DECL_UNION ;
 int assert (int) ;
 int gen_aggregate_items (int ) ;
 int genlnf (char*,...) ;
 int get_gen_name (TYPE_1__*) ;

void gen_aggregate(Decl *decl) {
    assert(decl->kind == DECL_STRUCT || decl->kind == DECL_UNION);
    if (decl->is_incomplete) {
        return;
    }
    genlnf("%s %s {", decl->kind == DECL_STRUCT ? "struct" : "union", get_gen_name(decl));
    gen_aggregate_items(decl->aggregate);
    genlnf("};");
}
