#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* sourceLoc; } ;
struct TYPE_4__ {char* file; int /*<<< orphan*/  line; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char*,long,int /*<<< orphan*/ ) ; 
 char* last_loc ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  source_files ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(Node *node) {
    if (!node->sourceLoc)
        return;
    char *file = node->sourceLoc->file;
    long fileno = (long)FUNC2(source_files, file);
    if (!fileno) {
        fileno = FUNC3(source_files) + 1;
        FUNC4(source_files, file, (void *)fileno);
        FUNC0(".file %ld \"%s\"", fileno, FUNC6(file));
    }
    char *loc = FUNC1(".loc %ld %d 0", fileno, node->sourceLoc->line);
    if (FUNC7(loc, last_loc)) {
        FUNC0("%s", loc);
        FUNC5(file, node->sourceLoc->line);
    }
    last_loc = loc;
}