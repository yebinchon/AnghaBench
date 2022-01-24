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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {size_t cfgStatus; int /*<<< orphan*/  option; int /*<<< orphan*/  ptrLength; scalar_t__ ptr; } ;
typedef  TYPE_1__ SGlobalConfig ;

/* Variables and functions */
 scalar_t__ INADDR_NONE ; 
 size_t TSDB_CFG_CSTATUS_FILE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tsCfgStatusStr ; 

void FUNC4(SGlobalConfig *cfg, char *input_value) {
  uint32_t value = FUNC0(input_value);
  char *   option = (char *)cfg->ptr;
  if (value == INADDR_NONE) {
    FUNC1("config option:%s, input value:%s, is not a valid ip address, use default value:%s",
           cfg->option, input_value, option);
  } else {
    if (cfg->cfgStatus <= TSDB_CFG_CSTATUS_FILE) {
      FUNC3(option, input_value, cfg->ptrLength);
      cfg->cfgStatus = TSDB_CFG_CSTATUS_FILE;
    } else {
      FUNC2("config option:%s, input value:%s, is configured by %s, use %s", cfg->option, input_value,
            tsCfgStatusStr[cfg->cfgStatus], option);
    }
  }
}