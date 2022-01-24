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
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(const char *filename, int err)
{
    char errbuf[128];
    const char *errbuf_ptr = errbuf;

    if (FUNC2(err, errbuf, sizeof(errbuf)) < 0)
        errbuf_ptr = FUNC3(FUNC0(err));
    FUNC1(NULL, AV_LOG_ERROR, "%s: %s\n", filename, errbuf_ptr);
}