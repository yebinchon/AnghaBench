
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float minValue; float maxValue; size_t cfgStatus; int option; scalar_t__ ptr; } ;
typedef TYPE_1__ SGlobalConfig ;


 size_t TSDB_CFG_CSTATUS_FILE ;
 scalar_t__ atof (char*) ;
 int pError (char*,int ,char*,float,float,float) ;
 int pWarn (char*,int ,char*,int ,float) ;
 int * tsCfgStatusStr ;

void tsReadFloatConfig(SGlobalConfig *cfg, char *input_value) {
  float value = (float)atof(input_value);
  float *option = (float *)cfg->ptr;
  if (value < cfg->minValue || value > cfg->maxValue) {
    pError("config option:%s, input value:%s, out of range[%f, %f], use default value:%f",
           cfg->option, input_value, cfg->minValue, cfg->maxValue, *option);
  } else {
    if (cfg->cfgStatus <= TSDB_CFG_CSTATUS_FILE) {
      *option = value;
      cfg->cfgStatus = TSDB_CFG_CSTATUS_FILE;
    } else {
      pWarn("config option:%s, input value:%s, is configured by %s, use %f", cfg->option, input_value,
            tsCfgStatusStr[cfg->cfgStatus], *option);
    }
  }
}
