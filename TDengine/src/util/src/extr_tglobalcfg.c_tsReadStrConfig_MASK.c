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
struct TYPE_3__ {int ptrLength; size_t cfgStatus; int /*<<< orphan*/  option; scalar_t__ ptr; } ;
typedef  TYPE_1__ SGlobalConfig ;

/* Variables and functions */
 size_t TSDB_CFG_CSTATUS_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/ * tsCfgStatusStr ; 

void FUNC4(SGlobalConfig *cfg, char *input_value) {
  int   length = FUNC2(input_value);
  char *option = (char *)cfg->ptr;
  if (length <= 0 || length > cfg->ptrLength) {
    FUNC0("config option:%s, input value:%s, length out of range[0, %d], use default value:%s",
           cfg->option, input_value, cfg->ptrLength, option);
  } else {
    if (cfg->cfgStatus <= TSDB_CFG_CSTATUS_FILE) {
      FUNC3(option, input_value, cfg->ptrLength);
      cfg->cfgStatus = TSDB_CFG_CSTATUS_FILE;
    } else {
      FUNC1("config option:%s, input value:%s, is configured by %s, use %s", cfg->option, input_value,
            tsCfgStatusStr[cfg->cfgStatus], option);
    }
  }
}