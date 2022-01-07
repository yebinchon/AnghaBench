
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct SSchema {int dummy; } ;
struct TYPE_4__ {scalar_t__ numOfTags; int numOfColumns; } ;
typedef TYPE_1__ SMeterMeta ;


 struct SSchema* tsGetColumnSchema (TYPE_1__*,int ) ;

struct SSchema* tsGetTagSchema(SMeterMeta* pMeta) {
  if (pMeta == ((void*)0) || pMeta->numOfTags == 0) {
    return ((void*)0);
  }

  return tsGetColumnSchema(pMeta, pMeta->numOfColumns);
}
