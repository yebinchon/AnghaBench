
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_5__ {int kind; int fields; int is_struct; struct TYPE_5__* ptr; int len; } ;
typedef TYPE_1__ Type ;





 int * dict_keys (int ) ;
 TYPE_1__* vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static bool is_same_struct(Type *a, Type *b) {
    if (a->kind != b->kind)
        return 0;
    switch (a->kind) {
    case 130:
        return a->len == b->len &&
            is_same_struct(a->ptr, b->ptr);
    case 129:
        return is_same_struct(a->ptr, b->ptr);
    case 128: {
        if (a->is_struct != b->is_struct)
            return 0;
        Vector *ka = dict_keys(a->fields);
        Vector *kb = dict_keys(b->fields);
        if (vec_len(ka) != vec_len(kb))
            return 0;
        for (int i = 0; i < vec_len(ka); i++)
            if (!is_same_struct(vec_get(ka, i), vec_get(kb, i)))
                return 0;
        return 1;
    }
    default:
        return 1;
    }
}
