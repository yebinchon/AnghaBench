
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ grp_attr_val; } ;
typedef TYPE_1__ lck_grp_attr_t ;


 scalar_t__ LCK_GRP_ATTR_STAT ;
 int LcksOpts ;
 int enaLkStat ;

void
lck_grp_attr_setdefault(
 lck_grp_attr_t *attr)
{
 if (LcksOpts & enaLkStat)
  attr->grp_attr_val = LCK_GRP_ATTR_STAT;
 else
  attr->grp_attr_val = 0;
}
