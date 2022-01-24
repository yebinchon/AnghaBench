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
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* tsCharset ; 
 char* tsLocale ; 

void FUNC6() {
  char msgLocale[] = "Invalid locale:%s, please set the valid locale in config file";
  char msgCharset[] = "Invalid charset:%s, please set the valid charset in config file";
  char msgCharset1[] = "failed to get charset, please set the valid charset in config file";

  char *locale = FUNC3(LC_CTYPE, tsLocale);

  // default locale or user specified locale is not valid, abort launch
  if (locale == NULL) {
    FUNC2(msgLocale, tsLocale);
    FUNC1(msgLocale, tsLocale);
  }

  if (FUNC4(tsCharset) == 0) {
    FUNC2("%s\n", msgCharset1);
    FUNC1(msgCharset1);
    FUNC0(-1);
  }

  if (!FUNC5(tsCharset)) {
    FUNC2(msgCharset, tsCharset);
    FUNC1(msgCharset, tsCharset);
    FUNC0(-1);
  }
}