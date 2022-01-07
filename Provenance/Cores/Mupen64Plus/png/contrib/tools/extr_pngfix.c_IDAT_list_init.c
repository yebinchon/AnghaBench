
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IDAT_list {int length; int * next; } ;


 int CLEAR (struct IDAT_list) ;
 int IDAT_INIT_LENGTH ;

__attribute__((used)) static void
IDAT_list_init(struct IDAT_list *list)
{
   CLEAR(*list);

   list->next = ((void*)0);
   list->length = IDAT_INIT_LENGTH;
}
