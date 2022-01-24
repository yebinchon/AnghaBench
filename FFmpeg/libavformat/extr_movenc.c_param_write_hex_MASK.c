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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(AVIOContext *pb, const char *name, const uint8_t *value, int len)
{
    char buf[150];
    len = FUNC0(sizeof(buf) / 2 - 1, len);
    FUNC2(buf, value, len, 0);
    buf[2 * len] = '\0';
    FUNC1(pb, "<param name=\"%s\" value=\"%s\" valuetype=\"data\"/>\n", name, buf);
}