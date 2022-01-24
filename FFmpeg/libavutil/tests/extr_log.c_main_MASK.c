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
 int AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_PANIC ; 
 int AV_LOG_QUIET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int use_color ; 

int FUNC5(int argc, char **argv)
{
    int i;
    FUNC1(AV_LOG_DEBUG);
    for (use_color=0; use_color<=256; use_color = 255*use_color+1) {
        FUNC0(NULL, AV_LOG_FATAL, "use_color: %d\n", use_color);
        for (i = AV_LOG_DEBUG; i>=AV_LOG_QUIET; i-=8) {
            FUNC0(NULL, i, " %d", i);
            FUNC0(NULL, AV_LOG_INFO, "e ");
            FUNC0(NULL, i + 256*123, "C%d", i);
            FUNC0(NULL, AV_LOG_INFO, "e");
        }
        FUNC0(NULL, AV_LOG_PANIC, "\n");
    }
    {
        int result;
        char buffer[4];
        result = FUNC2("foo", NULL, 0);
        if(result != 3) {
            FUNC3("Test NULL buffer failed.\n");
            return 1;
        }
        result = FUNC2("foo", buffer, 2);
        if(result != 3 || FUNC4(buffer, "f", 2)) {
            FUNC3("Test buffer too small failed.\n");
            return 1;
        }
        result = FUNC2("foo", buffer, 4);
        if(result != 3 || FUNC4(buffer, "foo", 4)) {
            FUNC3("Test buffer sufficiently big failed.\n");
            return 1;
        }
    }
    return 0;
}