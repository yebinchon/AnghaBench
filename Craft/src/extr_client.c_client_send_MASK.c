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
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  sd ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(char *data) {
    if (!client_enabled) {
        return;
    }
    if (FUNC0(sd, data, FUNC3(data)) == -1) {
        FUNC2("client_sendall");
        FUNC1(1);
    }
}