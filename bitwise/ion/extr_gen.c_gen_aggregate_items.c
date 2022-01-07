
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; int base; int num_elems; } ;
struct TYPE_7__ {size_t num_items; scalar_t__ kind; TYPE_1__* items; } ;
struct TYPE_6__ {scalar_t__ kind; size_t num_names; TYPE_2__* subaggregate; int * names; TYPE_3__* type; int pos; } ;
typedef TYPE_1__ AggregateItem ;
typedef TYPE_2__ Aggregate ;


 scalar_t__ AGGREGATE_ITEM_FIELD ;
 scalar_t__ AGGREGATE_ITEM_SUBAGGREGATE ;
 scalar_t__ AGGREGATE_STRUCT ;
 scalar_t__ TYPESPEC_ARRAY ;
 int assert (int ) ;
 int gen_indent ;
 int gen_sync_pos (int ) ;
 int genlnf (char*,...) ;
 TYPE_3__* new_typespec_ptr (int ,int ) ;
 int typespec_to_cdecl (TYPE_3__*,int ) ;

void gen_aggregate_items(Aggregate *aggregate) {
    gen_indent++;
    for (size_t i = 0; i < aggregate->num_items; i++) {
        AggregateItem item = aggregate->items[i];
        if (item.kind == AGGREGATE_ITEM_FIELD) {
            for (size_t j = 0; j < item.num_names; j++) {
                gen_sync_pos(item.pos);
                if (item.type->kind == TYPESPEC_ARRAY && !item.type->num_elems) {
                    genlnf("%s;", typespec_to_cdecl(new_typespec_ptr(item.pos, item.type->base), item.names[j]));
                } else {
                    genlnf("%s;", typespec_to_cdecl(item.type, item.names[j]));
                }
            }
        } else if (item.kind == AGGREGATE_ITEM_SUBAGGREGATE) {
            genlnf("%s {", item.subaggregate->kind == AGGREGATE_STRUCT ? "struct" : "union");
            gen_aggregate_items(item.subaggregate);
            genlnf("};");
        } else {
            assert(0);
        }
    }
    gen_indent--;
}
