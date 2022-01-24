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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_CHLD_HOLD_ACC ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_CHLD_MERGE ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_CHLD_MERGE_DETACH ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_CHLD_PRIV_X ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_CHLD_REL ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_CHLD_REL_ACC ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_CHLD_REL_X ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC4(char *buffer)
{
    FUNC0(buffer, "+CHLD:");

    if (*buffer != '(') {
        return NULL;
    }

    buffer++;

    while (*buffer != '\0') {
        if (FUNC3("0", buffer, 1) == 0) {
            FUNC2(BTA_HF_CLIENT_CHLD_REL);
            buffer++;
        } else if (FUNC3("1x", buffer, 2) == 0) {
            FUNC2(BTA_HF_CLIENT_CHLD_REL_X);
            buffer += 2;
        } else if (FUNC3("1", buffer, 1) == 0) {
            FUNC2(BTA_HF_CLIENT_CHLD_REL_ACC);
            buffer++;
        } else if (FUNC3("2x", buffer, 2) == 0) {
            FUNC2(BTA_HF_CLIENT_CHLD_PRIV_X);
            buffer += 2;
        } else if (FUNC3("2", buffer, 1) == 0) {
            FUNC2(BTA_HF_CLIENT_CHLD_HOLD_ACC);
            buffer++;
        } else if (FUNC3("3", buffer, 1) == 0) {
            FUNC2(BTA_HF_CLIENT_CHLD_MERGE);
            buffer++;
        } else if (FUNC3("4", buffer, 1) == 0) {
            FUNC2(BTA_HF_CLIENT_CHLD_MERGE_DETACH);
            buffer++;
        } else {
            return NULL;
        }

        if (*buffer == ',') {
            buffer++;
            continue;
        }

        if (*buffer == ')') {
            buffer++;
            break;
        }

        return NULL;
    }

    FUNC1(buffer);

    return buffer;
}