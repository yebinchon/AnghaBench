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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,float) ; 

void FUNC2(config_file_t *conf, const char *key, double val)
{
   char buf[128];

   buf[0] = '\0';
#ifdef __cplusplus
   snprintf(buf, sizeof(buf), "%f", (float)val);
#elif defined(__STDC_VERSION__) && __STDC_VERSION__>=199901L
   FUNC1(buf, sizeof(buf), "%lf", val);
#else
   snprintf(buf, sizeof(buf), "%f", (float)val);
#endif
   FUNC0(conf, key, buf);
}