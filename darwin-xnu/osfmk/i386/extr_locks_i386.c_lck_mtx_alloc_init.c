
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int lck_grp_t ;
typedef int lck_attr_t ;


 scalar_t__ kalloc (int) ;
 int lck_mtx_init (int *,int *,int *) ;
 int lck_mtx_zone ;
 scalar_t__ zalloc (int ) ;

lck_mtx_t *
lck_mtx_alloc_init(
 lck_grp_t *grp,
 lck_attr_t *attr)
{
 lck_mtx_t *lck;




 if ((lck = (lck_mtx_t *)kalloc(sizeof(lck_mtx_t))) != 0)
  lck_mtx_init(lck, grp, attr);

 return(lck);
}
