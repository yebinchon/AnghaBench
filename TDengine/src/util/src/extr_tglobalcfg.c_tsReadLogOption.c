
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cfgType; int valType; int option; } ;
typedef TYPE_1__ SGlobalConfig ;


 int TSDB_CFG_CTYPE_B_CONFIG ;
 int TSDB_CFG_CTYPE_B_LOG ;


 scalar_t__ strcasecmp (int ,char*) ;
 TYPE_1__* tsGlobalConfig ;
 int tsGlobalConfigNum ;
 int tsReadFilePathConfig (TYPE_1__*,char*) ;
 int tsReadIntConfig (TYPE_1__*,char*) ;
 int tsSetAllDebugFlag () ;

void tsReadLogOption(char *option, char *value) {
  for (int i = 0; i < tsGlobalConfigNum; ++i) {
    SGlobalConfig *cfg = tsGlobalConfig + i;
    if (!(cfg->cfgType & TSDB_CFG_CTYPE_B_CONFIG) || !(cfg->cfgType & TSDB_CFG_CTYPE_B_LOG)) continue;
    if (strcasecmp(cfg->option, option) != 0) continue;

    switch (cfg->valType) {
      case 128:
        tsReadIntConfig(cfg, value);
        if (strcasecmp(cfg->option, "debugFlag") == 0) {
          tsSetAllDebugFlag();
        }
        break;
      case 129:
        tsReadFilePathConfig(cfg, value);
        break;
      default:
        break;
    }
    break;
  }
}
