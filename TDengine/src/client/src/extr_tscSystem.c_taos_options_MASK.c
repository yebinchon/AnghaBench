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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  TSDB_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(TSDB_OPTION option, const void *arg, ...) {
  static int32_t lock = 0;

  for (int i = 1; FUNC1(&lock, 0, 1) != 0; ++i) {
    if (i % 1000 == 0) {
      FUNC4("haven't acquire lock after spin %d times.", i);
      FUNC2();
    }
  }

  int ret = FUNC3(option, (const char*)arg);

  FUNC0(&lock, 0);
  return ret;
}