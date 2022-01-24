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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
struct stat {int st_mode; scalar_t__ st_size; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int MAP_FILE ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int FUNC2 (int,struct stat*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const char *path, vm_offset_t * objAddr, vm_size_t * objSize)
{
    int error = -1;
    int fd;
    struct stat stat_buf;

    *objAddr = 0;
    *objSize = 0;

    do {
        if ((fd = FUNC4(path, O_RDONLY)) == -1) {
            continue;
        }

        if (FUNC2(fd, &stat_buf) == -1) {
            continue;
        }

        if (0 == (stat_buf.st_mode & S_IFREG)) {
            continue;
        }

        if (0 == stat_buf.st_size) {
            error = 0;
            continue;
        }

        *objSize = stat_buf.st_size;

        *objAddr = (vm_offset_t)FUNC3(NULL /* address */, *objSize,
            PROT_READ|PROT_WRITE, MAP_FILE|MAP_PRIVATE /* flags */,
            fd, 0 /* offset */);

        if ((void *)*objAddr == MAP_FAILED) {
                *objAddr = 0;
                *objSize = 0;
            continue;
        }

        error = 0;

    } while (false);

    if (-1 != fd) {
        FUNC0(fd);
    }
    if (error) {
        FUNC1(stderr, "couldn't read %s: %s\n", path, FUNC5(errno));
    }

    return error;
}