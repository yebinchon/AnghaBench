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

/* Variables and functions */
 int /*<<< orphan*/  TSDB_FILENAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC2(char *lhead, char *ldata, char *llast, char *dhead, char *ddata, char *dlast) {
  if (lhead != NULL) {
    FUNC0(dhead != NULL);
    FUNC1(lhead, dhead, TSDB_FILENAME_LEN);
  }

  if (ldata != NULL) {
    FUNC0(ddata != NULL);
    FUNC1(ldata, ddata, TSDB_FILENAME_LEN);
  }

  if (llast != NULL) {
    FUNC0(dlast != NULL);
    FUNC1(llast, dlast, TSDB_FILENAME_LEN);
  }
}