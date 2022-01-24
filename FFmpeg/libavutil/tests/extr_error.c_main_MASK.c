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
struct error_entry {int num; char* tag; } ;

/* Variables and functions */
 int FUNC0 (struct error_entry*) ; 
 char* FUNC1 (int) ; 
 struct error_entry* error_entries ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

int FUNC3(void)
{
    int i;

    for (i = 0; i < FUNC0(error_entries); i++) {
        const struct error_entry *entry = &error_entries[i];
        FUNC2("%d: %s [%s]\n", entry->num, FUNC1(entry->num), entry->tag);
    }

    for (i = 0; i < 256; i++) {
        FUNC2("%d: %s\n", -i, FUNC1(-i));
    }

    return 0;
}