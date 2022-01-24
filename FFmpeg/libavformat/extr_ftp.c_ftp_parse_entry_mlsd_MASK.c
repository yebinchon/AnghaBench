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
struct TYPE_3__ {int /*<<< orphan*/  size; void* group_id; void* user_id; void* filemode; int /*<<< orphan*/  modification_timestamp; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ AVIODirEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_ENTRY_DIRECTORY ; 
 int /*<<< orphan*/  AVIO_ENTRY_FILE ; 
 int /*<<< orphan*/  AVIO_ENTRY_SYMBOLIC_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(char *mlsd, AVIODirEntry *next)
{
    char *fact, *value;
    FUNC3(NULL, "%s\n", mlsd);
    while((fact = FUNC2(mlsd, ";", &mlsd))) {
        if (fact[0] == ' ') {
            next->name = FUNC1(&fact[1]);
            continue;
        }
        fact = FUNC2(fact, "=", &value);
        if (!FUNC0(fact, "type")) {
            if (!FUNC0(value, "cdir") || !FUNC0(value, "pdir"))
                return 1;
            if (!FUNC0(value, "dir"))
                next->type = AVIO_ENTRY_DIRECTORY;
            else if (!FUNC0(value, "file"))
                next->type = AVIO_ENTRY_FILE;
            else if (!FUNC0(value, "OS.unix=slink:"))
                next->type = AVIO_ENTRY_SYMBOLIC_LINK;
        } else if (!FUNC0(fact, "modify")) {
            next->modification_timestamp = FUNC4(value);
        } else if (!FUNC0(fact, "UNIX.mode")) {
            next->filemode = FUNC6(value, NULL, 8);
        } else if (!FUNC0(fact, "UNIX.uid") || !FUNC0(fact, "UNIX.owner"))
            next->user_id = FUNC6(value, NULL, 10);
        else if (!FUNC0(fact, "UNIX.gid") || !FUNC0(fact, "UNIX.group"))
            next->group_id = FUNC6(value, NULL, 10);
        else if (!FUNC0(fact, "size") || !FUNC0(fact, "sizd"))
            next->size = FUNC5(value, NULL, 10);
    }
    return 0;
}