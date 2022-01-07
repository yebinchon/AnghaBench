
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int capacity; int size; int data; } ;
typedef TYPE_1__ SignList ;
typedef int Sign ;


 int free (int ) ;
 int memcpy (int ,int ,int) ;
 int sign_list_alloc (TYPE_1__*,int) ;

void sign_list_grow(SignList *list) {
    SignList new_list;
    sign_list_alloc(&new_list, list->capacity * 2);
    memcpy(new_list.data, list->data, list->size * sizeof(Sign));
    free(list->data);
    list->capacity = new_list.capacity;
    list->data = new_list.data;
}
