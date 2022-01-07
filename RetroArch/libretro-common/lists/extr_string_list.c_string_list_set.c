
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {TYPE_1__* elems; } ;
struct TYPE_2__ {int data; } ;


 int free (int ) ;
 int strdup (char const*) ;

void string_list_set(struct string_list *list,
      unsigned idx, const char *str)
{
   free(list->elems[idx].data);
   list->elems[idx].data = strdup(str);
}
