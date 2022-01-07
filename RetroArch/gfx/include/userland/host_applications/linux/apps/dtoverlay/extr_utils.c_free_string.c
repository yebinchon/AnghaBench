
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* prev; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* next; } ;
typedef TYPE_2__ STRING_T ;


 TYPE_2__* allocated_strings ;
 int free (TYPE_2__*) ;

void free_string(const char *string)
{
    STRING_T *str;

    if (!string)
 return;

    str = (STRING_T *)(string - sizeof(STRING_T));
    if (str == allocated_strings)
    {
 allocated_strings = str->next;
 if (allocated_strings == str)
     allocated_strings = ((void*)0);
    }
    str->prev->next = str->next;
    str->next->prev = str->prev;
    free(str);
}
