
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
struct TYPE_3__ {int daysPerFile; size_t precision; } ;
typedef TYPE_1__ SVnodeCfg ;


 int* tsMsPerDay ;

__attribute__((used)) static int64_t getOldestKey(int32_t numOfFiles, int64_t fileId, SVnodeCfg *pCfg) {
  int64_t duration = pCfg->daysPerFile * tsMsPerDay[pCfg->precision];
  return (fileId - numOfFiles + 1) * duration;
}
