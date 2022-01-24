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

/* Variables and functions */
 int FUNC0 (int,char const*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char const*,int,int) ; 

int FUNC2(const char *virt_name, int fsaFd, const char *dev_path, const char *mount_path)
{
    int isMounted = 0;

    if(dev_path)
    {
        isMounted = 1;

        int res = FUNC0(fsaFd, dev_path, mount_path, 2, 0, 0);
        if(res != 0)
        {
            return res;
        }
    }

    return FUNC1(virt_name, mount_path, fsaFd, isMounted);
}