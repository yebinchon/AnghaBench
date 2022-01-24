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
typedef  char* sds ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void) {
    sds version = FUNC0();
    FUNC1(
        "disque %s\r\n"
        "Type: \"help @<group>\" to get a list of commands in <group>\r\n"
        "      \"help <command>\" for help on <command>\r\n"
        "      \"help <tab>\" to get a list of possible help topics\r\n"
        "      \"quit\" to exit\r\n",
        version
    );
    FUNC2(version);
}