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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*) ; 

int FUNC5(const char *old, const char *new)
{
    char *oldbuf = FUNC4(old);
    char *newbuf = FUNC4(new);
    int ret = -1;

    FUNC0( "vc_hostfs_rename: '%s' to '%s'", old, new );

    if (oldbuf && newbuf)
    {
       FUNC1(oldbuf);
       FUNC1(newbuf);

       if ( FUNC3( oldbuf, newbuf ) == 0 )
          ret = 0;
    }

    if (oldbuf)
       FUNC2(oldbuf);

    if (newbuf)
       FUNC2(newbuf);

    return ret;
}