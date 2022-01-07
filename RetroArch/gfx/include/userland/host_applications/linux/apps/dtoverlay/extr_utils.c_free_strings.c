
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ STRING_T ;


 TYPE_1__* allocated_strings ;
 int free (TYPE_1__*) ;

void free_strings(void)
{
    if (allocated_strings)
    {
 STRING_T *str = allocated_strings;
 do
 {
     STRING_T *t = str;
     str = t->next;
     free(t);
 } while (str != allocated_strings);
 allocated_strings = ((void*)0);
    }
}
