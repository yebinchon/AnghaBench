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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  fattributes_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DIRENT ; 
 int /*<<< orphan*/  ATTR_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int S_IWUSR ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

int FUNC3(const char *path, fattributes_t *attr)
{
    struct stat sb;

    FUNC0("vc_hostfs_get_attr: '%s'", path );

    *attr = 0;

    if ( FUNC2( path, &sb ) == 0 )
    {
        if ( FUNC1( sb.st_mode ))
        {
            *attr |= ATTR_DIRENT;
        }

        if (( sb.st_mode & S_IWUSR  ) == 0 )
        {
            *attr |= ATTR_RDONLY;
        }

        return 0;
    }
    return -1;
}