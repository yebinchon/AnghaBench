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
struct TYPE_3__ {int cfgType; } ;
typedef  TYPE_1__ SGlobalConfig ;

/* Variables and functions */
 int TSDB_CFG_CTYPE_B_CLUSTER ; 
 int TSDB_CFG_CTYPE_B_NOT_PRINT ; 

bool FUNC0(SGlobalConfig *cfg) {
  if (cfg->cfgType & TSDB_CFG_CTYPE_B_CLUSTER)
    return false;
  if (cfg->cfgType & TSDB_CFG_CTYPE_B_NOT_PRINT)
    return false;
  return true;
}