
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long len; int value; int (* free ) (int ) ;struct TYPE_5__* next; struct TYPE_5__* head; } ;
typedef TYPE_1__ listNode ;
typedef TYPE_1__ list ;


 int stub1 (int ) ;
 int zfree (TYPE_1__*) ;

void listRelease(list *list)
{
    unsigned long len;
    listNode *current, *next;

    current = list->head;
    len = list->len;
    while(len--) {
        next = current->next;
        if (list->free) list->free(current->value);
        zfree(current);
        current = next;
    }
    zfree(list);
}
