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
 int /*<<< orphan*/  client_enabled ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,char const*) ; 

void FUNC2(const char *username, const char *identity_token) {
    if (!client_enabled) {
        return;
    }
    char buffer[1024];
    FUNC1(buffer, 1024, "A,%s,%s\n", username, identity_token);
    FUNC0(buffer);
}