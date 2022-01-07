
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct string_list_elem {int data; TYPE_1__ attr; } ;


 int strcasecmp (int ,int ) ;

__attribute__((used)) static int qstrcmp_dir(const void *a_, const void *b_)
{
   const struct string_list_elem *a = (const struct string_list_elem*)a_;
   const struct string_list_elem *b = (const struct string_list_elem*)b_;
   int a_type = a->attr.i;
   int b_type = b->attr.i;


   if (a_type != b_type)
      return b_type - a_type;
   return strcasecmp(a->data, b->data);
}
