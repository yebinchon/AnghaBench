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
struct replay {int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  tempo; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct replay*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct replay*) ; 

int FUNC3( struct replay *replay ) {
	int count = 0, duration = 0;
	FUNC1( replay, 0 );
	while( count < 1 ) {
		duration += FUNC0( replay->tempo, replay->sample_rate );
		count = FUNC2( replay );
	}
	FUNC1( replay, 0 );
	return duration;
}