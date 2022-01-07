
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int aggregate_item_field_index (int *,char const*) ;
 int * aggregate_item_field_type_from_index (int *,int) ;
 int assert (int ) ;
 int is_aggregate_type (int *) ;

Type *aggregate_item_field_type_from_name(Type *type, const char *name) {
    assert(is_aggregate_type(type));
    int index = aggregate_item_field_index(type, name);
    if (index < 0) {
        return ((void*)0);
    }
    return aggregate_item_field_type_from_index(type, index);
}
