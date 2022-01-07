
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int cfgType; int valType; int option; } ;
typedef TYPE_1__ SGlobalConfig ;


 int TSDB_CFG_CTYPE_B_CONFIG ;







 int pError (char*,char const*,char*) ;
 scalar_t__ strcasecmp (int ,char const*) ;
 TYPE_1__* tsGlobalConfig ;
 int tsGlobalConfigNum ;
 int tsReadFilePathConfig (TYPE_1__*,char*) ;
 int tsReadFloatConfig (TYPE_1__*,char*) ;
 int tsReadIntConfig (TYPE_1__*,char*) ;
 int tsReadIpConfig (TYPE_1__*,char*) ;
 int tsReadShortConfig (TYPE_1__*,char*) ;
 int tsReadStrConfig (TYPE_1__*,char*) ;
 int tsReadUIntConfig (TYPE_1__*,char*) ;

void tsReadConfigOption(const char *option, char *value) {
  for (int i = 0; i < tsGlobalConfigNum; ++i) {
    SGlobalConfig *cfg = tsGlobalConfig + i;
    if (!(cfg->cfgType & TSDB_CFG_CTYPE_B_CONFIG)) continue;
    if (strcasecmp(cfg->option, option) != 0) continue;

    switch (cfg->valType) {
      case 130:
        tsReadShortConfig(cfg, value);
        break;
      case 132:
        tsReadIntConfig(cfg, value);
        break;
      case 128:
        tsReadUIntConfig(cfg, value);
        break;
      case 133:
        tsReadFloatConfig(cfg, value);
        break;
      case 129:
        tsReadStrConfig(cfg, value);
        break;
      case 131:
        tsReadIpConfig(cfg, value);
        break;
      case 134:
        tsReadFilePathConfig(cfg, value);
        break;
      default:
        pError("config option:%s, input value:%s, can't be recognized", option, value);
        break;
    }
    break;
  }
}
