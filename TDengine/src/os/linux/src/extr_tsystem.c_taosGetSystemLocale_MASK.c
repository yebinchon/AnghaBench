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
struct TYPE_3__ {scalar_t__ cfgStatus; } ;
typedef  TYPE_1__ SGlobalConfig ;

/* Variables and functions */
 int /*<<< orphan*/  LC_CTYPE ; 
 scalar_t__ TSDB_CFG_CSTATUS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  tsCharset ; 
 TYPE_1__* FUNC8 (char*) ; 
 int /*<<< orphan*/  tsLocale ; 

void FUNC9() {  // get and set default locale
  char  sep = '.';
  char *locale = NULL;

  SGlobalConfig *cfg_locale = FUNC8("locale");
  if (cfg_locale && cfg_locale->cfgStatus < TSDB_CFG_CSTATUS_DEFAULT) {
    locale = FUNC3(LC_CTYPE, "");
    if (locale == NULL) {
      FUNC1("can't get locale from system");
    } else {
      FUNC4(tsLocale, locale, FUNC6(tsLocale));
      FUNC2("locale not configured, set to system default:%s", tsLocale);
    }
  }

  /* if user does not specify the charset, extract it from locale */
  SGlobalConfig *cfg_charset = FUNC8("charset");
  if (cfg_charset && cfg_charset->cfgStatus < TSDB_CFG_CSTATUS_DEFAULT) {
    char *str = FUNC5(tsLocale, sep);
    if (str != NULL) {
      str++;

      char *revisedCharset = FUNC7(str);
      FUNC4(tsCharset, revisedCharset, FUNC6(tsCharset));

      FUNC0(revisedCharset);
      FUNC2("charset not configured, set to system default:%s", tsCharset);
    }
  }
}