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
struct pullup_field {int affinity; int breaks; struct pullup_field* next; } ;
struct pullup_context {int dummy; } ;

/* Variables and functions */
 int PULLUP_BREAK_LEFT ; 
 int PULLUP_BREAK_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct pullup_context * c,
                                        struct pullup_field * f )
{
    int i;
    struct pullup_field * f0 = f;
    const char aff_l[] = "+..", aff_r[] = "..+";
    FUNC0( "affinity: " );
    for( i = 0; i < 4; i++ )
    {
        FUNC1( "%c%d%c",
                aff_l[1+f->affinity],
                i,
                aff_r[1+f->affinity] );

        f = f->next;
    }
    f = f0;
    FUNC1("\nbreaks:   ");
    for( i = 0; i < 4; i++ )
    {
        FUNC1( "%c%d%c",
                f->breaks & PULLUP_BREAK_LEFT  ? '|' : '.',
                i,
                f->breaks & PULLUP_BREAK_RIGHT ? '|' : '.' );

        f = f->next;
    }
    FUNC1("\n");
}