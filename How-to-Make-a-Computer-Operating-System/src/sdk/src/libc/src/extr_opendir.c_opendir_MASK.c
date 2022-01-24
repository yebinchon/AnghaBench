#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fd; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 

DIR* FUNC3( const char* name ) {
    DIR* dir;

    dir = ( DIR* )FUNC1( sizeof( DIR ) );

    if ( dir == NULL ) {
        return NULL;
    }

    dir->fd = FUNC2( name, O_RDONLY );

    if ( dir->fd < 0 ) {
        FUNC0( dir );
        return NULL;
    }

    return dir;
}