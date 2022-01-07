
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IDAT_list {struct IDAT_list* next; } ;


 int CLEAR (struct IDAT_list) ;
 int IDAT_list_size (struct IDAT_list*,int ) ;
 int clear (struct IDAT_list*,int ) ;
 int free (struct IDAT_list*) ;

__attribute__((used)) static void
IDAT_list_end(struct IDAT_list *IDAT_list)
{
   struct IDAT_list *list = IDAT_list->next;

   CLEAR(*IDAT_list);

   while (list != ((void*)0))
   {
      struct IDAT_list *next = list->next;

      clear(list, IDAT_list_size(list, 0));
      free(list);
      list = next;
   }
}
