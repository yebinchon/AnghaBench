
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_name {size_t num_attr; int email; TYPE_1__* attr; } ;
struct TYPE_2__ {scalar_t__ type; int value; } ;


 int x509_str_compare (int ,int ) ;

int x509_name_compare(struct x509_name *a, struct x509_name *b)
{
 int res;
 size_t i;

 if (!a && b)
  return -1;
 if (a && !b)
  return 1;
 if (!a && !b)
  return 0;
 if (a->num_attr < b->num_attr)
  return -1;
 if (a->num_attr > b->num_attr)
  return 1;

 for (i = 0; i < a->num_attr; i++) {
  if (a->attr[i].type < b->attr[i].type)
   return -1;
  if (a->attr[i].type > b->attr[i].type)
   return -1;
  res = x509_str_compare(a->attr[i].value, b->attr[i].value);
  if (res)
   return res;
 }
 res = x509_str_compare(a->email, b->email);
 if (res)
  return res;

 return 0;
}
