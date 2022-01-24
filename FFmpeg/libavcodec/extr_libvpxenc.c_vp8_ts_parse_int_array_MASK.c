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
 char* FUNC0 (char*,char*,char**) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(int *dest, char *value, size_t value_len, int max_entries)
{
    int dest_idx = 0;
    char *saveptr = NULL;
    char *token = FUNC0(value, ",", &saveptr);

    while (token && dest_idx < max_entries) {
        dest[dest_idx++] = FUNC1(token, NULL, 10);
        token = FUNC0(NULL, ",", &saveptr);
    }
}