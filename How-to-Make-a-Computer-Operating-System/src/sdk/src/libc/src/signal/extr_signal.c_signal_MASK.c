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
struct sigaction {scalar_t__ sa_handler; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  scalar_t__ sighandler_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SA_RESTART ; 
 scalar_t__ SIG_ERR ; 
 int _NSIG ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int,struct sigaction*,struct sigaction*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

sighandler_t FUNC3( int signum, sighandler_t handler ) {
    int error;
    struct sigaction act;
    struct sigaction oldact;

    if ( ( handler == SIG_ERR ) ||
         ( signum < 0 ) ||
         ( signum >= _NSIG ) ) {
        errno = -EINVAL;
        return SIG_ERR;
    }

    act.sa_handler = handler;

    error = FUNC2( &act.sa_mask );

    if ( error < 0 ) {
        return SIG_ERR;
    }

    error = FUNC1( &act.sa_mask, signum );

    if ( error < 0 ) {
        return SIG_ERR;
    }

    act.sa_flags = SA_RESTART;

    if ( FUNC0( signum, &act, &oldact ) < 0 ) {
        return SIG_ERR;
    }

    return oldact.sa_handler;
}