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
struct TYPE_3__ {char* payload; int allocSize; } ;
typedef  TYPE_1__ SSqlCmd ;

/* Variables and functions */
 int TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,int) ; 

int FUNC4(SSqlCmd* pCmd, int size) {
  FUNC0(size > 0);

  if (pCmd->payload == NULL) {
    FUNC0(pCmd->allocSize == 0);

    pCmd->payload = (char*)FUNC1(size);
    if (pCmd->payload == NULL) return TSDB_CODE_CLI_OUT_OF_MEMORY;
    pCmd->allocSize = size;
  } else {
    if (pCmd->allocSize < size) {
      char* b = FUNC3(pCmd->payload, size);
      if (b == NULL) return TSDB_CODE_CLI_OUT_OF_MEMORY;
      pCmd->payload = b;
      pCmd->allocSize = size;
    }
  }

  FUNC2(pCmd->payload, 0, pCmd->allocSize);
  FUNC0(pCmd->allocSize >= size);

  return TSDB_CODE_SUCCESS;
}