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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,char const*,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *s, int level,
                    const char *name, const uint8_t *value, int len)
{
    char buf[33];
    len = FUNC0(len, 16);
    if (FUNC2() < level)
        return;
    FUNC3(buf, value, len, 1);
    buf[len << 1] = '\0';
    FUNC1(s, level, "%s: %s\n", name, buf);
}