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
struct secreplay {size_t wsize; void* bitmap; } ;
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_SECA ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct secreplay*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sadb_mutex ; 

struct secreplay *
FUNC5(size_t wsize)
{
	struct secreplay *p;
	
	FUNC0(sadb_mutex, LCK_MTX_ASSERT_OWNED);

	p = (struct secreplay *)FUNC2(sizeof(*p), M_SECA, M_NOWAIT | M_ZERO);
	if (!p) {
		FUNC4(sadb_mutex);
		p = (struct secreplay *)FUNC2(sizeof(*p), M_SECA,
		    M_WAITOK | M_ZERO);
		FUNC3(sadb_mutex);
	}
	if (!p)
		return p;

	if (wsize != 0) {
		p->bitmap = (caddr_t)FUNC2(wsize, M_SECA, M_NOWAIT | M_ZERO);
		if (!p->bitmap) {
			FUNC4(sadb_mutex);
			p->bitmap = (caddr_t)FUNC2(wsize, M_SECA,
			    M_WAITOK | M_ZERO);
			FUNC3(sadb_mutex);
			if (!p->bitmap) {
				FUNC1(p, M_SECA);
				return NULL;
			}
		}
	}
	p->wsize = wsize;
	return p;
}