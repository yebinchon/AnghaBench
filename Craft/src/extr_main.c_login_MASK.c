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
 scalar_t__ FUNC1 (char*,int,char*,int) ; 
 scalar_t__ FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4() {
    char username[128] = {0};
    char identity_token[128] = {0};
    char access_token[128] = {0};
    if (FUNC1(username, 128, identity_token, 128)) {
        FUNC3("Contacting login server for username: %s\n", username);
        if (FUNC2(
            access_token, 128, username, identity_token))
        {
            FUNC3("Successfully authenticated with the login server\n");
            FUNC0(username, access_token);
        }
        else {
            FUNC3("Failed to authenticate with the login server\n");
            FUNC0("", "");
        }
    }
    else {
        FUNC3("Logging in anonymously\n");
        FUNC0("", "");
    }
}