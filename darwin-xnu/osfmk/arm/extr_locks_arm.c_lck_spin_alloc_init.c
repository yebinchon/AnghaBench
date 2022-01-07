
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_spin_t ;
typedef int lck_grp_t ;
typedef int lck_attr_t ;


 scalar_t__ kalloc (int) ;
 int lck_spin_init (int *,int *,int *) ;

lck_spin_t *
lck_spin_alloc_init(
  lck_grp_t * grp,
  lck_attr_t * attr)
{
 lck_spin_t *lck;

 if ((lck = (lck_spin_t *) kalloc(sizeof(lck_spin_t))) != 0)
  lck_spin_init(lck, grp, attr);

 return (lck);
}
