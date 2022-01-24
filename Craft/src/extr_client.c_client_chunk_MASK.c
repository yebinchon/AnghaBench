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
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int,int) ; 

void FUNC2(int p, int q, int key) {
    if (!client_enabled) {
        return;
    }
    char buffer[1024];
    FUNC1(buffer, 1024, "C,%d,%d,%d\n", p, q, key);
    FUNC0(buffer);
}