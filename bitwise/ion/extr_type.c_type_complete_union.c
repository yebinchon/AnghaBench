
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_4__* type; scalar_t__ offset; scalar_t__ name; } ;
typedef TYPE_2__ TypeField ;
struct TYPE_13__ {int num_fields; TYPE_2__* fields; } ;
struct TYPE_15__ {scalar_t__ kind; int nonmodifiable; TYPE_1__ aggregate; void* align; void* size; } ;
typedef TYPE_3__ Type ;
struct TYPE_16__ {scalar_t__ kind; scalar_t__ nonmodifiable; } ;


 void* ALIGN_UP (void*,void*) ;
 void* MAX (void*,int ) ;
 scalar_t__ TYPE_COMPLETING ;
 scalar_t__ TYPE_UNION ;
 int add_type_fields (TYPE_2__**,TYPE_4__*,int ) ;
 int assert (int) ;
 int buf_len (TYPE_2__*) ;
 int buf_push (TYPE_2__*,TYPE_2__) ;
 int type_alignof (TYPE_4__*) ;
 int type_sizeof (TYPE_4__*) ;

void type_complete_union(Type *type, TypeField *fields, size_t num_fields) {
    assert(type->kind == TYPE_COMPLETING);
    type->kind = TYPE_UNION;
    type->size = 0;
    type->align = 0;
    bool nonmodifiable = 0;
    TypeField *new_fields = ((void*)0);
    for (TypeField *it = fields; it != fields + num_fields; it++) {
        assert(it->type->kind > TYPE_COMPLETING);
        if (it->name) {
            it->offset = 0;
            buf_push(new_fields, *it);
        } else {
            add_type_fields(&new_fields, it->type, 0);
        }
        type->size = MAX(type->size, type_sizeof(it->type));
        type->align = MAX(type->align, type_alignof(it->type));
        nonmodifiable = it->type->nonmodifiable || nonmodifiable;
    }
    type->size = ALIGN_UP(type->size, type->align);
    type->aggregate.fields = new_fields;
    type->aggregate.num_fields = buf_len(new_fields);
    type->nonmodifiable = nonmodifiable;
}
