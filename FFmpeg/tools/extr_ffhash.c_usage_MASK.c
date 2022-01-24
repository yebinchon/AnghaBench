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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(void)
{
    int i = 0;
    const char *name;

    FUNC1("usage: ffhash [b64:]algorithm [input]...\n");
    FUNC1("Supported hash algorithms:");
    do {
        name = FUNC0(i);
        if (name)
            FUNC1(" %s", name);
        i++;
    } while(name);
    FUNC1("\n");
}