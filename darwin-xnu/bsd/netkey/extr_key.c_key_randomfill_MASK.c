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
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ) ; 

void
FUNC5(
			   void *p,
			   size_t l)
{
#ifdef __APPLE__
	cc_rand_generate(p, l);	
#else
	size_t n;
	u_int32_t v;
	static int warn = 1;
	
	n = 0;
	n = (size_t)FUNC4(p, (u_int)l);
	/* last resort */
	while (n < l) {
		v = FUNC3();
		FUNC0(&v, (u_int8_t *)p + n,
			  l - n < sizeof(v) ? l - n : sizeof(v));
		n += sizeof(v);
		
		if (warn) {
			FUNC2("WARNING: pseudo-random number generator "
				   "used for IPsec processing\n");
			warn = 0;
		}
	}
#endif
}