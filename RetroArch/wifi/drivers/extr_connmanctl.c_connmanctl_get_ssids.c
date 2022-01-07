
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
struct string_list {int dummy; } ;
typedef int ssid ;
struct TYPE_4__ {unsigned int size; TYPE_1__* elems; } ;
struct TYPE_3__ {char* data; } ;


 int RARCH_FILETYPE_UNSET ;
 TYPE_2__* lines ;
 int string_list_append (struct string_list*,char*,union string_list_elem_attr) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void connmanctl_get_ssids(struct string_list* ssids)
{
   unsigned i;
   union string_list_elem_attr attr;
   attr.i = RARCH_FILETYPE_UNSET;

   if (!lines)
      return;

   for (i = 0; i < lines->size; i++)
   {
      char ssid[20];
      const char *line = lines->elems[i].data;

      strlcpy(ssid, line+4, sizeof(ssid));
      string_list_append(ssids, ssid, attr);
   }
}
