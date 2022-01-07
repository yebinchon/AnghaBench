
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int string_list_free (struct string_list*) ;

void dir_list_free(struct string_list *list)
{
   string_list_free(list);
}
