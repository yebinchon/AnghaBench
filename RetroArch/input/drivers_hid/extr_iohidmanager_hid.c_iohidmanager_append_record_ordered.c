
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; struct TYPE_4__* next; } ;
typedef TYPE_1__ apple_input_rec_t ;



__attribute__((used)) static void iohidmanager_append_record_ordered(apple_input_rec_t **p_rec, apple_input_rec_t *b)
{
    apple_input_rec_t *tmp = *p_rec;
    while (tmp && (tmp->id <= b->id))
    {
       p_rec = &tmp->next;
       tmp = tmp->next;
    }
    b->next = tmp;
    *p_rec = b;
}
