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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_COMMAND_SIZE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(const char *str, int *size, int *width) {
  wchar_t *wc = (wchar_t *)FUNC0(sizeof(wchar_t), MAX_COMMAND_SIZE);
  *size = FUNC3(str);
  FUNC2(wc, str, MAX_COMMAND_SIZE);
  *width = FUNC4(wc, MAX_COMMAND_SIZE);
  FUNC1(wc);
}