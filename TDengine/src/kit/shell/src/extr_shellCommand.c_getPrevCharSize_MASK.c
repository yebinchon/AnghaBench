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
 int /*<<< orphan*/  MB_CUR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(const char *str, int pos, int *size, int *width) {
  FUNC0(pos > 0);

  wchar_t wc;
  *size = 0;
  *width = 0;

  while (--pos >= 0) {
    *size += 1;

    if (str[pos] > 0 || FUNC1(str[pos]) > 1) break;
  }

  int rc = FUNC2(&wc, str + pos, MB_CUR_MAX);
  FUNC0(rc == *size);

  *width = FUNC3(wc);
}