
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overlay {int name; } ;
typedef int ssize_t ;


 scalar_t__ string_is_equal (int ,char const*) ;

__attribute__((used)) static ssize_t task_overlay_find_index(const struct overlay *ol,
      const char *name, size_t size)
{
   size_t i;

   if (!ol)
      return -1;

   for (i = 0; i < size; i++)
   {
      if (string_is_equal(ol[i].name, name))
         return i;
   }

   return -1;
}
