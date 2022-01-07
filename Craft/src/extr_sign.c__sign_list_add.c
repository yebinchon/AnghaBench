
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; scalar_t__ capacity; int * data; } ;
typedef TYPE_1__ SignList ;
typedef int Sign ;


 int memcpy (int *,int *,int) ;
 int sign_list_grow (TYPE_1__*) ;

void _sign_list_add(SignList *list, Sign *sign) {
    if (list->size == list->capacity) {
        sign_list_grow(list);
    }
    Sign *e = list->data + list->size++;
    memcpy(e, sign, sizeof(Sign));
}
