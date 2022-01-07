
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_17__ {struct TYPE_17__* next; TYPE_4__* type; } ;
typedef TYPE_3__ TypeLink ;
struct TYPE_16__ {size_t num_fields; TYPE_1__* fields; } ;
struct TYPE_18__ {TYPE_2__ aggregate; } ;
typedef TYPE_4__ Type ;
struct TYPE_15__ {TYPE_4__* type; } ;


 int TYPE_TUPLE ;
 int buf_push (int ,TYPE_4__*) ;
 int cached_tuple_types ;
 int hash_bytes (TYPE_4__**,size_t) ;
 TYPE_3__* map_get_from_uint64 (int *,int) ;
 int map_put_from_uint64 (int *,int,TYPE_3__*) ;
 int tuple_types ;
 TYPE_4__* type_alloc (int ) ;
 int type_complete_tuple (TYPE_4__*,TYPE_4__**,size_t) ;
 TYPE_3__* xmalloc (int) ;

Type *type_tuple(Type **fields, size_t num_fields) {
    size_t fields_size = num_fields * sizeof(*fields);
    uint64_t hash = hash_bytes(fields, fields_size);
    uint64_t key = hash ? hash : 1;
    TypeLink *cached = map_get_from_uint64(&cached_tuple_types, key);
    for (TypeLink *it = cached; it; it = it->next) {
        Type *cached_type = it->type;
        if (cached_type->aggregate.num_fields == num_fields) {
            for (size_t i = 0; i < num_fields; i++) {
                if (cached_type->aggregate.fields[i].type != fields[i]) {
                    goto next;
                }
            }
            return cached_type;
        }
        next: ;
    }
    Type *type = type_alloc(TYPE_TUPLE);
    type_complete_tuple(type, fields, num_fields);
    TypeLink *new_cached = xmalloc(sizeof(TypeLink));
    new_cached->type = type;
    new_cached->next = cached;
    map_put_from_uint64(&cached_tuple_types, key, new_cached);
    buf_push(tuple_types, type);
    return type;
}
