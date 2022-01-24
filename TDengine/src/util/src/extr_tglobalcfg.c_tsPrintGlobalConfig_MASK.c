#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_3__ {int cfgType; int valType; size_t unitType; scalar_t__ ptr; int /*<<< orphan*/  option; } ;
typedef  TYPE_1__ SGlobalConfig ;

/* Variables and functions */
 int TSDB_CFG_CTYPE_B_CLIENT ; 
 int TSDB_CFG_CTYPE_B_CLUSTER ; 
 int TSDB_CFG_CTYPE_B_LITE ; 
 int TSDB_CFG_CTYPE_B_NOT_PRINT ; 
 int TSDB_CFG_PRINT_LEN ; 
#define  TSDB_CFG_VTYPE_DIRECTORY 134 
#define  TSDB_CFG_VTYPE_FLOAT 133 
#define  TSDB_CFG_VTYPE_INT 132 
#define  TSDB_CFG_VTYPE_IPSTR 131 
#define  TSDB_CFG_VTYPE_SHORT 130 
#define  TSDB_CFG_VTYPE_STRING 129 
#define  TSDB_CFG_VTYPE_UINT 128 
 int /*<<< orphan*/  FUNC0 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* tsGlobalConfig ; 
 int tsGlobalConfigNum ; 
 int /*<<< orphan*/ * tsGlobalUnit ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ tscEmbedded ; 

void FUNC5() {
  FUNC1("   taos config & system info:");
  FUNC1("==================================");

  for (int i = 0; i < tsGlobalConfigNum; ++i) {
    SGlobalConfig *cfg = tsGlobalConfig + i;
    if (tscEmbedded == 0 && !(cfg->cfgType & TSDB_CFG_CTYPE_B_CLIENT)) continue;
    if (cfg->cfgType & TSDB_CFG_CTYPE_B_NOT_PRINT) continue;
    if (cfg->cfgType & TSDB_CFG_CTYPE_B_LITE) {
#ifdef CLUSTER
      continue;
#endif
    }
    if (cfg->cfgType & TSDB_CFG_CTYPE_B_CLUSTER) {
#ifndef CLUSTER
      continue;
#endif
    }
    
    int optionLen = (int)FUNC2(cfg->option);
    int blankLen = TSDB_CFG_PRINT_LEN - optionLen;
    blankLen = blankLen < 0 ? 0 : blankLen;

    char blank[TSDB_CFG_PRINT_LEN];
    FUNC0(blank, ' ', TSDB_CFG_PRINT_LEN);
    blank[blankLen] = 0;

    switch (cfg->valType) {
      case TSDB_CFG_VTYPE_SHORT:
        FUNC1(" %s:%s%d%s", cfg->option, blank, *((int16_t *)cfg->ptr), tsGlobalUnit[cfg->unitType]);
        break;
      case TSDB_CFG_VTYPE_INT:
        FUNC1(" %s:%s%d%s", cfg->option, blank, *((int32_t *)cfg->ptr), tsGlobalUnit[cfg->unitType]);
        break;
      case TSDB_CFG_VTYPE_UINT:
        FUNC1(" %s:%s%d%s", cfg->option, blank, *((uint32_t *)cfg->ptr), tsGlobalUnit[cfg->unitType]);
        break;
      case TSDB_CFG_VTYPE_FLOAT:
        FUNC1(" %s:%s%f%s", cfg->option, blank, *((float *)cfg->ptr), tsGlobalUnit[cfg->unitType]);
        break;
      case TSDB_CFG_VTYPE_STRING:
      case TSDB_CFG_VTYPE_IPSTR:
      case TSDB_CFG_VTYPE_DIRECTORY:
        FUNC1(" %s:%s%s%s", cfg->option, blank, (char *)cfg->ptr, tsGlobalUnit[cfg->unitType]);
        break;
      default:
        break;
    }
  }

  FUNC3();

  FUNC4();

  FUNC1("==================================");
}