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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t data_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  libtest_arg2 ; 

__attribute__((used)) static int FUNC3(void *clientp, double dltotal, double dlnow,
                             double ultotal, double ulnow)
{
  FILE *moo = FUNC1(libtest_arg2, "wb");

  (void)clientp; /* UNUSED */
  (void)dltotal; /* UNUSED */
  (void)dlnow; /* UNUSED */

  if(moo) {
    if((size_t)ultotal == data_size && (size_t)ulnow == data_size)
      FUNC2(moo, "PASSED, UL data matched data size\n");
    else
      FUNC2(moo, "Progress callback called with UL %f out of %f\n",
              ulnow, ultotal);
    FUNC0(moo);
  }
  return 0;
}