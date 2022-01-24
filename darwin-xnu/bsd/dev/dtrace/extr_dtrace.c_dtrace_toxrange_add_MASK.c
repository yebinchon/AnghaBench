#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {uintptr_t dtt_base; uintptr_t dtt_limit; } ;
typedef  TYPE_1__ dtrace_toxrange_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* dtrace_toxrange ; 
 int dtrace_toxranges ; 
 int dtrace_toxranges_max ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(uintptr_t base, uintptr_t limit)
{
	if (dtrace_toxranges >= dtrace_toxranges_max) {
		int osize, nsize;
		dtrace_toxrange_t *range;

		osize = dtrace_toxranges_max * sizeof (dtrace_toxrange_t);

		if (osize == 0) {
			FUNC0(dtrace_toxrange == NULL);
			FUNC0(dtrace_toxranges_max == 0);
			dtrace_toxranges_max = 1;
		} else {
			dtrace_toxranges_max <<= 1;
		}

		nsize = dtrace_toxranges_max * sizeof (dtrace_toxrange_t);
		range = FUNC3(nsize, KM_SLEEP);

		if (dtrace_toxrange != NULL) {
			FUNC0(osize != 0);
			FUNC1(dtrace_toxrange, range, osize);
			FUNC2(dtrace_toxrange, osize);
		}

		dtrace_toxrange = range;
	}

	FUNC0(dtrace_toxrange[dtrace_toxranges].dtt_base == 0);
	FUNC0(dtrace_toxrange[dtrace_toxranges].dtt_limit == 0);

	dtrace_toxrange[dtrace_toxranges].dtt_base = base;
	dtrace_toxrange[dtrace_toxranges].dtt_limit = limit;
	dtrace_toxranges++;
}