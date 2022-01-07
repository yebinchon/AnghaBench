
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; } ;
typedef int SDnodeObj ;


 TYPE_1__* tsModule ;

bool mgmtCheckModuleInDnode(SDnodeObj *pDnode, int moduleType) {
  return tsModule[moduleType].num != 0;
}
