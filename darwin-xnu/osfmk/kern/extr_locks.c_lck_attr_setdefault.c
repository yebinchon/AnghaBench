
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* lck_attr_val; } ;
typedef TYPE_1__ lck_attr_t ;


 void* LCK_ATTR_DEBUG ;
 void* LCK_ATTR_NONE ;
 int LcksOpts ;
 int enaLkDeb ;

void
lck_attr_setdefault(
 lck_attr_t *attr)
{





  if (LcksOpts & enaLkDeb)
   attr->lck_attr_val = LCK_ATTR_DEBUG;
  else
   attr->lck_attr_val = LCK_ATTR_NONE;






}
