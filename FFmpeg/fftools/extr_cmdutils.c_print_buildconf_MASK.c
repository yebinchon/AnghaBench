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
 char FFMPEG_CONFIGURATION ; 
 int INDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(int flags, int level)
{
    const char *indent = flags & INDENT ? "  " : "";
    char str[] = { FFMPEG_CONFIGURATION };
    char *conflist, *remove_tilde, *splitconf;

    // Change all the ' --' strings to '~--' so that
    // they can be identified as tokens.
    while ((conflist = FUNC2(str, " --")) != NULL) {
        FUNC1(conflist, "~--", 3);
    }

    // Compensate for the weirdness this would cause
    // when passing 'pkg-config --static'.
    while ((remove_tilde = FUNC2(str, "pkg-config~")) != NULL) {
        FUNC1(remove_tilde, "pkg-config ", 11);
    }

    splitconf = FUNC3(str, "~");
    FUNC0(NULL, level, "\n%sconfiguration:\n", indent);
    while (splitconf != NULL) {
        FUNC0(NULL, level, "%s%s%s\n", indent, indent, splitconf);
        splitconf = FUNC3(NULL, "~");
    }
}