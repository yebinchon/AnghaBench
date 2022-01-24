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
struct sample {int loop_start; int loop_length; short* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (short*) ; 
 int /*<<< orphan*/  FUNC2 (short*,short*,int) ; 

__attribute__((used)) static void FUNC3( struct sample *sample ) {
	int idx;
	int loop_start = sample->loop_start;
	int loop_length = sample->loop_length;
	int loop_end = loop_start + loop_length;
	short *sample_data = sample->data;
	short *new_data = (short*)FUNC0( loop_end + loop_length + 1, sizeof( short ) );
	if( new_data ) {
		FUNC2( new_data, sample_data, loop_end * sizeof( short ) );
		for( idx = 0; idx < loop_length; idx++ ) {
			new_data[ loop_end + idx ] = sample_data[ loop_end - idx - 1 ];
		}
		FUNC1( sample->data );
		sample->data = new_data;
		sample->loop_length *= 2;
		sample->data[ loop_start + sample->loop_length ] = sample->data[ loop_start ];
	}
}