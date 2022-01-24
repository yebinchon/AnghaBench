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
typedef  int /*<<< orphan*/  debug_ucred ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void FUNC2( debug_ucred * credp, size_t buf_size )
{
	int		i, my_count = (buf_size / sizeof(debug_ucred));
	
	FUNC1("\n\t dumping credential hash table - total creds %d \n", 
			my_count);
	for (i = 0; i < my_count; i++) {
		FUNC1("[%02d] ", i);
		FUNC0( credp );
		credp++;
	}
	return;
}