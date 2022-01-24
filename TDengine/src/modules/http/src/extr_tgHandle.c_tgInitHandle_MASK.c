#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HttpServer ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_TELEGRAF_CFG ; 
 char* configDir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  tgDecodeMethod ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

void FUNC5(HttpServer *pServer) {
  char fileName[256] = {0};
  FUNC1(fileName, "%s/taos.telegraf.cfg", configDir);
  if (FUNC4(fileName) <= 0) {
    FUNC2();
    if (FUNC3(DEFAULT_TELEGRAF_CFG, "default") <= 0) {
      FUNC2();
    }
  }

  FUNC0(pServer, &tgDecodeMethod);
}