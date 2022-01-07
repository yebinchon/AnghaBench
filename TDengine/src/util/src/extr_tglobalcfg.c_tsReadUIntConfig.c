
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {size_t cfgStatus; int option; scalar_t__ maxValue; scalar_t__ minValue; scalar_t__ ptr; } ;
typedef TYPE_1__ SGlobalConfig ;


 size_t TSDB_CFG_CSTATUS_FILE ;
 scalar_t__ atoi (char*) ;
 int pError (char*,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int pWarn (char*,int ,char*,int ,scalar_t__) ;
 int * tsCfgStatusStr ;

void tsReadUIntConfig(SGlobalConfig *cfg, char *input_value) {
  uint32_t value = (uint32_t)atoi(input_value);
  uint32_t *option = (uint32_t *)cfg->ptr;
  if (value < (uint32_t)cfg->minValue || value > (uint32_t)cfg->maxValue) {
    pError("config option:%s, input value:%s, out of range[%f, %f], use default value:%u",
           cfg->option, input_value, cfg->minValue, cfg->maxValue, *option);
  } else {
    if (cfg->cfgStatus <= TSDB_CFG_CSTATUS_FILE) {
      *option = value;
      cfg->cfgStatus = TSDB_CFG_CSTATUS_FILE;
    } else {
      pWarn("config option:%s, input value:%s, is configured by %s, use %u", cfg->option, input_value,
            tsCfgStatusStr[cfg->cfgStatus], *option);
    }
  }
}
