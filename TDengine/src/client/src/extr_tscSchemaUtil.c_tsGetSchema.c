
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SSchema {int dummy; } ;
typedef int SMeterMeta ;


 struct SSchema* tsGetColumnSchema (int *,int ) ;

struct SSchema* tsGetSchema(SMeterMeta* pMeta) {
  if (pMeta == ((void*)0)) {
    return ((void*)0);
  }
  return tsGetColumnSchema(pMeta, 0);
}
