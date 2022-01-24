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

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(dummy_vfs_t* instance, const char* path,
        bool should_be_called, bool should_be_opened, int line)
{
    const int flags = O_CREAT | O_TRUNC | O_RDWR;
    instance->called = false;
    int fd = FUNC4(FUNC2(), path, flags, 0);
    FUNC1(should_be_called, instance->called, line,
            "should_be_called check failed");
    if (should_be_called) {
        if (should_be_opened) {
            FUNC0(fd >= 0, line, "should be opened");
        } else {
            FUNC0(fd < 0, line, "should not be opened");
        }
    }
    FUNC3(FUNC2(), fd);
}