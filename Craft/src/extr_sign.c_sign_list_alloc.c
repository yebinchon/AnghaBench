
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int capacity; int * data; scalar_t__ size; } ;
typedef TYPE_1__ SignList ;
typedef int Sign ;


 scalar_t__ calloc (int,int) ;

void sign_list_alloc(SignList *list, int capacity) {
    list->capacity = capacity;
    list->size = 0;
    list->data = (Sign *)calloc(capacity, sizeof(Sign));
}
