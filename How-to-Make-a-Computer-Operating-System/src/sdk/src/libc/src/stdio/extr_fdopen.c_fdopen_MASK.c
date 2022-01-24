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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  errno ; 

FILE* FUNC2( int fd, const char* mode ) {
    int flags;

    if ( fd < 0 ) {
        errno = -EINVAL;
        return NULL;
    }

    flags = FUNC1( mode );

    return FUNC0( fd, 0, flags );
}