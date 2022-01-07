
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {size_t cfgStatus; int option; int ptrLength; scalar_t__ ptr; } ;
typedef TYPE_1__ SGlobalConfig ;


 scalar_t__ INADDR_NONE ;
 size_t TSDB_CFG_CSTATUS_FILE ;
 scalar_t__ inet_addr (char*) ;
 int pError (char*,int ,char*,char*) ;
 int pWarn (char*,int ,char*,int ,char*) ;
 int strncpy (char*,char*,int ) ;
 int * tsCfgStatusStr ;

void tsReadIpConfig(SGlobalConfig *cfg, char *input_value) {
  uint32_t value = inet_addr(input_value);
  char * option = (char *)cfg->ptr;
  if (value == INADDR_NONE) {
    pError("config option:%s, input value:%s, is not a valid ip address, use default value:%s",
           cfg->option, input_value, option);
  } else {
    if (cfg->cfgStatus <= TSDB_CFG_CSTATUS_FILE) {
      strncpy(option, input_value, cfg->ptrLength);
      cfg->cfgStatus = TSDB_CFG_CSTATUS_FILE;
    } else {
      pWarn("config option:%s, input value:%s, is configured by %s, use %s", cfg->option, input_value,
            tsCfgStatusStr[cfg->cfgStatus], option);
    }
  }
}
