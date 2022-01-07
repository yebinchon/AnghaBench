
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_list {struct buffer_list* next; } ;


 int DELETE (struct buffer_list*) ;

__attribute__((used)) static void
buffer_destroy_list(struct buffer_list *list)
{
   if (list != ((void*)0))
   {
      struct buffer_list *next = list->next;
      DELETE(list);
      buffer_destroy_list(next);
   }
}
