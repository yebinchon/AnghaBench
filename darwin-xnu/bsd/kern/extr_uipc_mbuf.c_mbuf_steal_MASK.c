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
typedef  int /*<<< orphan*/  mcache_obj_t ;
typedef  int mbuf_class_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
#define  MC_16KCL 134 
#define  MC_BIGCL 133 
#define  MC_CL 132 
#define  MC_MBUF 131 
#define  MC_MBUF_16KCL 130 
#define  MC_MBUF_BIGCL 129 
#define  MC_MBUF_CL 128 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int,int /*<<< orphan*/ ***,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  mbuf_mlock ; 

__attribute__((used)) static boolean_t
FUNC7(mbuf_class_t class, unsigned int num)
{
	mcache_obj_t *top = NULL;
	mcache_obj_t **list = &top;
	unsigned int tot = 0;

	FUNC0(mbuf_mlock, LCK_MTX_ASSERT_OWNED);

	switch (class) {
	case MC_MBUF:
	case MC_CL:
	case MC_BIGCL:
	case MC_16KCL:
		return (FALSE);

	case MC_MBUF_CL:
	case MC_MBUF_BIGCL:
	case MC_MBUF_16KCL:
		/* Get the required number of constructed objects if possible */
		if (FUNC5(class) > FUNC6(class)) {
			tot = FUNC3(class, &list,
			    FUNC1(num, FUNC5(class)));
		}

		/* And destroy them to get back the raw objects */
		if (top != NULL)
			(void) FUNC4(class, top, 1);
		break;

	default:
		FUNC2(0);
		/* NOTREACHED */
	}

	return (tot == num);
}