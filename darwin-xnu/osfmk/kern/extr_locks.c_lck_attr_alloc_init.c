
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_attr_t ;


 scalar_t__ kalloc (int) ;
 int lck_attr_setdefault (int *) ;

lck_attr_t *
lck_attr_alloc_init(
 void)
{
 lck_attr_t *attr;

 if ((attr = (lck_attr_t *)kalloc(sizeof(lck_attr_t))) != 0)
  lck_attr_setdefault(attr);

 return(attr);
}
