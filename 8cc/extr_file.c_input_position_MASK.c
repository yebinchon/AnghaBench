#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  column; int /*<<< orphan*/  line; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ File ;

/* Variables and functions */
 int /*<<< orphan*/  files ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

char *FUNC3() {
    if (FUNC1(files) == 0)
        return "(unknown)";
    File *f = FUNC2(files);
    return FUNC0("%s:%d:%d", f->name, f->line, f->column);
}