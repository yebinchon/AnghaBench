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
typedef  int /*<<< orphan*/  config_file_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

void FUNC2(config_file_t *conf, const char *entry, const char *val)
{
#if defined(RARCH_CONSOLE) || !defined(RARCH_INTERNAL)
   FUNC0(conf, entry, val);
#else
   char buf[PATH_MAX_LENGTH];

   buf[0] = '\0';
   fill_pathname_abbreviate_special(buf, val, sizeof(buf));
   config_set_string(conf, entry, buf);
#endif
}