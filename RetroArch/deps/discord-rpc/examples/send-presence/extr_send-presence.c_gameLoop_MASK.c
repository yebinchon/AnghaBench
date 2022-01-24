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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FrustrationLevel ; 
 int SendPresence ; 
 int StartTime ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9()
{
    char line[512];
    char* space;

    StartTime = FUNC7(0);

    FUNC4("You are standing in an open field west of a white house.\n");
    while (FUNC5(line, sizeof(line))) {
        if (line[0]) {
            if (line[0] == 'q') {
                break;
            }

            if (line[0] == 't') {
                FUNC4("Shutting off Discord.\n");
                FUNC1();
                continue;
            }

            if (line[0] == 'c') {
                if (SendPresence) {
                    FUNC4("Clearing presence information.\n");
                    SendPresence = 0;
                }
                else {
                    FUNC4("Restoring presence information.\n");
                    SendPresence = 1;
                }
                FUNC8();
                continue;
            }

            if (line[0] == 'y') {
                FUNC4("Reinit Discord.\n");
                FUNC3();
                continue;
            }

            if (FUNC7(NULL) & 1) {
                FUNC4("I don't understand that.\n");
            }
            else {
                space = FUNC6(line, ' ');
                if (space) {
                    *space = 0;
                }
                FUNC4("I don't know the word \"%s\".\n", line);
            }

            ++FrustrationLevel;

            FUNC8();
        }

#ifdef DISCORD_DISABLE_IO_THREAD
        Discord_UpdateConnection();
#endif
        FUNC0();
    }
}