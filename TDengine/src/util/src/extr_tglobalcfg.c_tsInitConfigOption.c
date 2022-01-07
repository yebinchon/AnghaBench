
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* int8_t ;
struct TYPE_3__ {char* option; float minValue; float maxValue; int cfgStatus; void* unitType; int ptrLength; void* cfgType; void* valType; void* ptr; } ;
typedef TYPE_1__ SGlobalConfig ;


 int TSDB_CFG_CSTATUS_NONE ;

void tsInitConfigOption(SGlobalConfig *cfg, char *name, void *ptr, int8_t valType, int8_t cfgType, float minVal,
                        float maxVal, uint8_t ptrLength, int8_t unitType) {
  cfg->option = name;
  cfg->ptr = ptr;
  cfg->valType = valType;
  cfg->cfgType = cfgType;
  cfg->minValue = minVal;
  cfg->maxValue = maxVal;
  cfg->ptrLength = ptrLength;
  cfg->unitType = unitType;
  cfg->cfgStatus = TSDB_CFG_CSTATUS_NONE;
}
