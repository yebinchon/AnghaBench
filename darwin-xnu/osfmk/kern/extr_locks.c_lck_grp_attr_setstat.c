
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int grp_attr_val; } ;
typedef TYPE_1__ lck_grp_attr_t ;


 int LCK_GRP_ATTR_STAT ;
 int hw_atomic_or (int *,int ) ;

void
lck_grp_attr_setstat(
 lck_grp_attr_t *attr)
{
 (void)hw_atomic_or(&attr->grp_attr_val, LCK_GRP_ATTR_STAT);
}
