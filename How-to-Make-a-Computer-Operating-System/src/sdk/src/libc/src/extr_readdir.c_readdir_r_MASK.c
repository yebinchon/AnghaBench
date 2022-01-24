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
struct dirent {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,struct dirent*,int) ; 

int FUNC1( DIR* dir, struct dirent* entry, struct dirent** result ) {
    int error;

    if ( ( dir == NULL ) ||
         ( entry == NULL ) ) {
        errno = -EINVAL;
        return -1;
    }

    error = FUNC0( dir->fd, entry, sizeof( struct dirent ) );

    if ( error == 0 ) {
        *result = NULL;
    } else {
        *result = entry;
    }

    return 0;
}