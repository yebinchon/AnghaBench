
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_3__ {scalar_t__ minValue; scalar_t__ maxValue; size_t cfgStatus; int option; scalar_t__ ptr; } ;
typedef TYPE_1__ SGlobalConfig ;


 size_t TSDB_CFG_CSTATUS_FILE ;
 scalar_t__ atoi (char*) ;
 int pError (char*,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int pWarn (char*,int ,char*,int ,scalar_t__) ;
 int * tsCfgStatusStr ;

void tsReadShortConfig(SGlobalConfig *cfg, char *input_value) {
  int32_t value = atoi(input_value);
  int16_t *option = (int16_t *)cfg->ptr;
  if (value < cfg->minValue || value > cfg->maxValue) {
    pError("config option:%s, input value:%s, out of range[%f, %f], use default value:%d",
           cfg->option, input_value, cfg->minValue, cfg->maxValue, *option);
  } else {
    if (cfg->cfgStatus <= TSDB_CFG_CSTATUS_FILE) {
      *option = (int16_t)value;
      cfg->cfgStatus = TSDB_CFG_CSTATUS_FILE;
    } else {
      pWarn("config option:%s, input value:%s, is configured by %s, use %d", cfg->option, input_value,
            tsCfgStatusStr[cfg->cfgStatus], *option);
    }
  }
}
