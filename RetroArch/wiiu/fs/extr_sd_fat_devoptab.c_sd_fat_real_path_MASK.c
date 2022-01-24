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
struct TYPE_3__ {char const* mount_path; } ;
typedef  TYPE_1__ sd_fat_private_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4 (const char *path, sd_fat_private_t *dev)
{
    /* Sanity check */
    if (!path)
        return NULL;

    /* Move the path pointer to the start of the actual path */
    if (FUNC1(path, ':') != NULL) {
        path = FUNC1(path, ':') + 1;
    }

    int mount_len = FUNC3(dev->mount_path);

    char *new_name = (char*)FUNC0(mount_len + FUNC3(path) + 1);
    if(new_name) {
        FUNC2(new_name, dev->mount_path);
        FUNC2(new_name + mount_len, path);
        return new_name;
    }
    return new_name;
}