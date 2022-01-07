
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_attr_t ;


 int kfree (int *,int) ;

void
lck_grp_attr_free(
 lck_grp_attr_t *attr)
{
 kfree(attr, sizeof(lck_grp_attr_t));
}
