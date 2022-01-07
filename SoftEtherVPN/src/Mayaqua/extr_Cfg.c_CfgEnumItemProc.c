
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int depth; int b; } ;
typedef int ITEM ;
typedef TYPE_1__ CFG_ENUM_PARAM ;


 int CfgAddItemText (int ,int *,int ) ;

bool CfgEnumItemProc(ITEM *t, void *param)
{
 CFG_ENUM_PARAM *p;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return 0;
 }

 p = (CFG_ENUM_PARAM *)param;
 CfgAddItemText(p->b, t, p->depth);

 return 1;
}
