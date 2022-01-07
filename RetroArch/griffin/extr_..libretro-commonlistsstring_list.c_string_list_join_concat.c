
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {size_t size; TYPE_1__* elems; } ;
struct TYPE_2__ {char const* data; } ;


 int strlcat (char*,char const*,size_t) ;
 size_t strlen (char*) ;

void string_list_join_concat(char *buffer, size_t size,
      const struct string_list *list, const char *delim)
{
   size_t i, len = strlen(buffer);

   buffer += len;
   size -= len;

   for (i = 0; i < list->size; i++)
   {
      strlcat(buffer, list->elems[i].data, size);
      if ((i + 1) < list->size)
         strlcat(buffer, delim, size);
   }
}
