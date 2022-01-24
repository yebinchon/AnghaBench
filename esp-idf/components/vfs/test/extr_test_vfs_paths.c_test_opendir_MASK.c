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
struct TYPE_3__ {int called; } ;
typedef  TYPE_1__ dummy_vfs_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(dummy_vfs_t* instance, const char* path,
        bool should_be_called, bool should_be_opened, int line)
{
    instance->called = false;
    DIR* dir = FUNC3(path);
    FUNC1(should_be_called, instance->called, line,
            "should_be_called check failed");
    if (should_be_called) {
        if (should_be_opened) {
            FUNC0(dir != NULL, line, "should be opened");
        } else {
            FUNC0(dir == 0, line, "should not be opened");
        }
    }
    if (dir) {
        FUNC2(dir);
    }
}