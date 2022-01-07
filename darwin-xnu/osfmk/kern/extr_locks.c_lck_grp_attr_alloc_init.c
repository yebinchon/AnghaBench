
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_attr_t ;


 scalar_t__ kalloc (int) ;
 int lck_grp_attr_setdefault (int *) ;

lck_grp_attr_t *
lck_grp_attr_alloc_init(
 void)
{
 lck_grp_attr_t *attr;

 if ((attr = (lck_grp_attr_t *)kalloc(sizeof(lck_grp_attr_t))) != 0)
  lck_grp_attr_setdefault(attr);

 return(attr);
}
