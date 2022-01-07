
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfgType; scalar_t__ valType; char* option; scalar_t__ ptr; } ;
typedef TYPE_1__ SGlobalConfig ;


 int TSDB_CFG_CTYPE_B_LOG ;
 scalar_t__ TSDB_CFG_VTYPE_INT ;
 int atoi (char*) ;
 int pError (char*) ;
 int pPrint (char*,...) ;
 int paGetToken (char*,char**,int*) ;
 int startMonitor () ;
 int stopMonitor () ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int stub1 () ;
 int stub2 () ;
 int taosLogSqlFp (char*) ;
 int taosResetLogFile () ;
 TYPE_1__* tsGlobalConfig ;
 int tsGlobalConfigNum ;
 int tsPrintGlobalConfig () ;
 int tsSetAllDebugFlag () ;

int tsCfgDynamicOptions(char *msg) {
  char *option, *value;
  int olen, vlen, code = 0;
  int vint = 0;

  paGetToken(msg, &option, &olen);
  if (olen == 0) return 0;

  paGetToken(option + olen + 1, &value, &vlen);
  if (vlen == 0)
    vint = 135;
  else {
    vint = atoi(value);
  }

  pPrint("change dynamic option: %s, value: %d", option, vint);

  for (int i = 0; i < tsGlobalConfigNum; ++i) {
    SGlobalConfig *cfg = tsGlobalConfig + i;
    if (!(cfg->cfgType & TSDB_CFG_CTYPE_B_LOG)) continue;
    if (cfg->valType != TSDB_CFG_VTYPE_INT) continue;
    if (strncasecmp(option, cfg->option, olen) != 0) continue;
    *((int *)cfg->ptr) = vint;

    if (strncasecmp(cfg->option, "monitor", olen) == 0) {
      if (0 == vint) {
        if(stopMonitor) (void)(*stopMonitor)();
      } else {
        if(startMonitor) (*startMonitor)();
      }
      return code;
    }

    if (strncasecmp(cfg->option, "debugFlag", olen) == 0) {
      tsSetAllDebugFlag();
    }

    return code;
  }

  if (strncasecmp(option, "resetlog", 8) == 0) {
    taosResetLogFile();
    tsPrintGlobalConfig();
    return code;
  }

  if (strncasecmp(option, "resetQueryCache", 15) == 0) {
    if (taosLogSqlFp) {
      pPrint("the query cache of internal client will reset");
      taosLogSqlFp("reset query cache");
    } else {
      pError("reset query cache can't be executed, for monitor not initialized");
      code = 169;
    }
  } else {
    code = 169;
  }

  return code;
}
