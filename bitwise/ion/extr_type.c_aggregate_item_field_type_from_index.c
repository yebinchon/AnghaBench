
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* fields; scalar_t__ num_fields; } ;
struct TYPE_9__ {TYPE_2__ aggregate; } ;
typedef TYPE_3__ Type ;
struct TYPE_7__ {TYPE_3__* type; } ;


 int assert (int) ;
 int is_aggregate_type (TYPE_3__*) ;

Type *aggregate_item_field_type_from_index(Type *type, int index) {
    assert(is_aggregate_type(type));
    assert(0 <= index && index < (int)type->aggregate.num_fields);
    return type->aggregate.fields[index].type;
}
