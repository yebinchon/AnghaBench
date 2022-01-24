#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dictEntry {int dummy; } ;
typedef  int /*<<< orphan*/  job ;
struct TYPE_2__ {int /*<<< orphan*/  jobs; } ;

/* Variables and functions */
 struct dictEntry* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct dictEntry*) ; 
 TYPE_1__ server ; 

job *FUNC2(char *id) {
    struct dictEntry *de = FUNC0(server.jobs, id);
    return de ? FUNC1(de) : NULL;
}