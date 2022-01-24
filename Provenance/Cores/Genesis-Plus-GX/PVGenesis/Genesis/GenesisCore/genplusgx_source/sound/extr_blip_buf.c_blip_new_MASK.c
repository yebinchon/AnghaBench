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
typedef  int /*<<< orphan*/  buf_t ;
struct TYPE_4__ {int factor; int size; } ;
typedef  TYPE_1__ blip_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int blip_max_ratio ; 
 int buf_extra ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int time_unit ; 

blip_t* FUNC4( int size )
{
	blip_t* m;
#ifdef BLIP_ASSERT
	assert( size >= 0 );
#endif
  
	m = (blip_t*) FUNC3( sizeof *m + (size + buf_extra) * sizeof (buf_t) );
	if ( m )
	{
		m->factor = time_unit / blip_max_ratio;
		m->size   = size;
		FUNC1( m );
#ifdef BLIP_ASSERT
		check_assumptions();
#endif
  }
	return m;
}