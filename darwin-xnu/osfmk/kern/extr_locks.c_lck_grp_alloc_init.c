
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_t ;
typedef int lck_grp_attr_t ;


 scalar_t__ kalloc (int) ;
 int lck_grp_init (int *,char const*,int *) ;

lck_grp_t *
lck_grp_alloc_init(
 const char* grp_name,
 lck_grp_attr_t *attr)
{
 lck_grp_t *grp;

 if ((grp = (lck_grp_t *)kalloc(sizeof(lck_grp_t))) != 0)
  lck_grp_init(grp, grp_name, attr);

 return(grp);
}
