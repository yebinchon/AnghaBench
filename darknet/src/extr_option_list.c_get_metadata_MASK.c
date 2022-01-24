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
struct TYPE_3__ {int /*<<< orphan*/  classes; int /*<<< orphan*/  names; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ metadata ;
typedef  int /*<<< orphan*/  list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 

metadata FUNC6(char *file)
{
    metadata m = {0};
    list *options = FUNC5(file);

    char *name_list = FUNC4(options, "names", 0);
    if(!name_list) name_list = FUNC4(options, "labels", 0);
    if(!name_list) {
        FUNC0(stderr, "No names or labels found\n");
    } else {
        m.names = FUNC2(name_list);
    }
    m.classes = FUNC3(options, "classes", 2);
    FUNC1(options);
    return m;
}