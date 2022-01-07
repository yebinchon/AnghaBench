
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_elem {int data; } ;


 int type_is_prioritized (int ) ;

__attribute__((used)) static int dir_entry_compare(const void *left, const void *right)
{
   const struct string_list_elem *le = (const struct string_list_elem*)left;
   const struct string_list_elem *re = (const struct string_list_elem*)right;
   bool l = type_is_prioritized(le->data);
   bool r = type_is_prioritized(re->data);

   return (int) r - (int) l;
}
