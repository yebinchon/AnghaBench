
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thumbnail_content; } ;
typedef TYPE_1__ stripes_handle_t ;


 int free (int ) ;
 int strdup (char*) ;
 int string_is_empty (int ) ;

__attribute__((used)) static void stripes_set_thumbnail_content(void *data, char *s, size_t len)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;
   if (!stripes)
      return;
   if (!string_is_empty(stripes->thumbnail_content))
      free(stripes->thumbnail_content);
   stripes->thumbnail_content = strdup(s);
}
