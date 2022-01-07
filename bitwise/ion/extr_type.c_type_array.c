
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_13__ {size_t num_elems; size_t size; int incomplete_elems; struct TYPE_13__* base; int align; int nonmodifiable; } ;
typedef TYPE_1__ Type ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_1__* type; } ;
typedef TYPE_2__ CachedArrayType ;


 int TYPE_ARRAY ;
 int cached_array_types ;
 int complete_type (TYPE_1__*) ;
 int hash_mix (int ,int ) ;
 int hash_ptr (TYPE_1__*) ;
 int hash_uint64 (size_t) ;
 TYPE_2__* map_get_from_uint64 (int *,int) ;
 int map_put_from_uint64 (int *,int,TYPE_2__*) ;
 int type_alignof (TYPE_1__*) ;
 TYPE_1__* type_alloc (int ) ;
 size_t type_sizeof (TYPE_1__*) ;
 TYPE_2__* xmalloc (int) ;

Type *type_array(Type *base, size_t num_elems, bool incomplete_elems) {
    uint64_t hash = hash_mix(hash_ptr(base), hash_uint64(num_elems));
    uint64_t key = hash ? hash : 1;
    CachedArrayType *cached = map_get_from_uint64(&cached_array_types, key);
    if (!incomplete_elems) {
        for (CachedArrayType *it = cached; it; it = it->next) {
            Type *type = it->type;
            if (type->base == base && type->num_elems == num_elems) {
                return type;
            }
        }
    }
    complete_type(base);
    Type *type = type_alloc(TYPE_ARRAY);
    type->nonmodifiable = base->nonmodifiable;
    type->size = num_elems * type_sizeof(base);
    type->align = type_alignof(base);
    type->base = base;
    type->num_elems = num_elems;
    type->incomplete_elems = incomplete_elems;
    if (!incomplete_elems) {
        CachedArrayType *new_cached = xmalloc(sizeof(CachedArrayType));
        new_cached->type = type;
        new_cached->next = cached;
        map_put_from_uint64(&cached_array_types, key, new_cached);
    }
    return type;
}
