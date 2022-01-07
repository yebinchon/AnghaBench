
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynstring {int size; } ;


 int dynstring_set_size (struct dynstring*,int) ;

__attribute__((used)) static int dynstring_grow(struct dynstring *ds)
{
   return dynstring_set_size(ds, (3*ds->size)/2);
}
