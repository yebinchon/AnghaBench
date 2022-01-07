
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lck_attr_val; } ;
typedef TYPE_1__ lck_attr_t ;


 int LCK_ATTR_DEBUG ;
 int hw_atomic_and (int *,int ) ;

void
lck_attr_cleardebug(
 lck_attr_t *attr)
{
 (void)hw_atomic_and(&attr->lck_attr_val, ~LCK_ATTR_DEBUG);
}
