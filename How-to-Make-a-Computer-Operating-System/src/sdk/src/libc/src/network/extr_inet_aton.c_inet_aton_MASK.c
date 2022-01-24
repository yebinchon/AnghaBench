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
struct in_addr {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 long FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC2( const char* cp, struct in_addr* inp ) {
    int i;
    unsigned int ip = 0;
    char* tmp= ( char* )cp;

    for ( i = 24; ; ) {
        long j;

        j = FUNC1( tmp, &tmp, 0 );

        if ( *tmp == 0 ) {
            ip |= j;

            break;
        } else if ( *tmp == '.' ) {
            if ( j > 255 ) {
                return 0;
            }

            ip |= ( j << i );

            if ( i > 0 ) {
                i -= 8;
            }

            ++tmp;

            continue;
        }

        return 0;
    }

    inp->s_addr = FUNC0( ip );

    return 1;
}