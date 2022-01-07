
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SSchema {int dummy; } ;
typedef int int32_t ;
typedef struct SSchema SSchema ;
typedef int SMeterMeta ;



struct SSchema* tsGetColumnSchema(SMeterMeta* pMeta, int32_t startCol) {
  return (SSchema*)(((char*)pMeta + sizeof(SMeterMeta)) + startCol * sizeof(SSchema));
}
