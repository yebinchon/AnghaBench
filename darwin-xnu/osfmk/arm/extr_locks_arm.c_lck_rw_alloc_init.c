
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_rw_t ;
typedef int lck_grp_t ;
typedef int lck_attr_t ;


 scalar_t__ kalloc (int) ;
 int lck_rw_init (int *,int *,int *) ;

lck_rw_t *
lck_rw_alloc_init(
 lck_grp_t *grp,
 lck_attr_t *attr)
{
 lck_rw_t *lck;

 if ((lck = (lck_rw_t *)kalloc(sizeof(lck_rw_t))) != 0)
  lck_rw_init(lck, grp, attr);

 return lck;
}
