
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thumbnail_system; } ;
typedef TYPE_1__ stripes_handle_t ;


 int string_is_empty (int ) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static void stripes_get_thumbnail_system(void *data, char*s, size_t len)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;
   if (!stripes)
      return;

   if (!string_is_empty(stripes->thumbnail_system))
      strlcpy(s, stripes->thumbnail_system, len);
}
