
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_3__ {int cfgType; int valType; size_t unitType; scalar_t__ ptr; int option; } ;
typedef TYPE_1__ SGlobalConfig ;


 int TSDB_CFG_CTYPE_B_CLIENT ;
 int TSDB_CFG_CTYPE_B_CLUSTER ;
 int TSDB_CFG_CTYPE_B_LITE ;
 int TSDB_CFG_CTYPE_B_NOT_PRINT ;
 int TSDB_CFG_PRINT_LEN ;







 int memset (char*,char,int) ;
 int pPrint (char*,...) ;
 scalar_t__ strlen (int ) ;
 TYPE_1__* tsGlobalConfig ;
 int tsGlobalConfigNum ;
 int * tsGlobalUnit ;
 int tsPrintGlobalConfigSpec () ;
 int tsPrintOsInfo () ;
 scalar_t__ tscEmbedded ;

void tsPrintGlobalConfig() {
  pPrint("   taos config & system info:");
  pPrint("==================================");

  for (int i = 0; i < tsGlobalConfigNum; ++i) {
    SGlobalConfig *cfg = tsGlobalConfig + i;
    if (tscEmbedded == 0 && !(cfg->cfgType & TSDB_CFG_CTYPE_B_CLIENT)) continue;
    if (cfg->cfgType & TSDB_CFG_CTYPE_B_NOT_PRINT) continue;
    if (cfg->cfgType & TSDB_CFG_CTYPE_B_LITE) {



    }
    if (cfg->cfgType & TSDB_CFG_CTYPE_B_CLUSTER) {

      continue;

    }

    int optionLen = (int)strlen(cfg->option);
    int blankLen = TSDB_CFG_PRINT_LEN - optionLen;
    blankLen = blankLen < 0 ? 0 : blankLen;

    char blank[TSDB_CFG_PRINT_LEN];
    memset(blank, ' ', TSDB_CFG_PRINT_LEN);
    blank[blankLen] = 0;

    switch (cfg->valType) {
      case 130:
        pPrint(" %s:%s%d%s", cfg->option, blank, *((int16_t *)cfg->ptr), tsGlobalUnit[cfg->unitType]);
        break;
      case 132:
        pPrint(" %s:%s%d%s", cfg->option, blank, *((int32_t *)cfg->ptr), tsGlobalUnit[cfg->unitType]);
        break;
      case 128:
        pPrint(" %s:%s%d%s", cfg->option, blank, *((uint32_t *)cfg->ptr), tsGlobalUnit[cfg->unitType]);
        break;
      case 133:
        pPrint(" %s:%s%f%s", cfg->option, blank, *((float *)cfg->ptr), tsGlobalUnit[cfg->unitType]);
        break;
      case 129:
      case 131:
      case 134:
        pPrint(" %s:%s%s%s", cfg->option, blank, (char *)cfg->ptr, tsGlobalUnit[cfg->unitType]);
        break;
      default:
        break;
    }
  }

  tsPrintGlobalConfigSpec();

  tsPrintOsInfo();

  pPrint("==================================");
}
