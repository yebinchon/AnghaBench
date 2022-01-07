
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ listNode ;
struct TYPE_6__ {TYPE_1__* head; TYPE_1__* tail; } ;
typedef TYPE_2__ list ;


 int listLength (TYPE_2__*) ;

void listRotate(list *list) {
    listNode *tail = list->tail;

    if (listLength(list) <= 1) return;


    list->tail = tail->prev;
    list->tail->next = ((void*)0);

    list->head->prev = tail;
    tail->prev = ((void*)0);
    tail->next = list->head;
    list->head = tail;
}
