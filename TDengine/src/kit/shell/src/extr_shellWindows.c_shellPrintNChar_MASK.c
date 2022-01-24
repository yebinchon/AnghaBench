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
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(char *str, int width, bool printMode) {
  int     col_left = width;
  wchar_t wc;
  while (col_left > 0) {
    if (*str == '\0') break;
    char *tstr = str;
    int   byte_width = FUNC0(&wc, tstr, MB_CUR_MAX);
    int   col_width = byte_width;
    if (col_left < col_width) break;
    FUNC1("%lc", wc);
    str += byte_width;
    col_left -= col_width;
  }

  while (col_left > 0) {
    FUNC1(" ");
    col_left--;
  }
  
  if (!printMode) {
    FUNC1("|");
  } else {
    FUNC1("\n");
  }
}