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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int CR0_CD ; 
 int CR0_NW ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 void* FAST_SLAVE_INIT ; 
 void* FULL_SLAVE_INIT ; 
 int /*<<< orphan*/  I386_INIT_SLAVE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25(boolean_t fast_restart)
{
	void	*init_param	= FULL_SLAVE_INIT;

	FUNC20(I386_INIT_SLAVE);

	if (!fast_restart) {
		/* Ensure that caching and write-through are enabled */
		FUNC21(FUNC11() & ~(CR0_NW|CR0_CD));
  
		FUNC0("i386_init_slave() CPU%d: phys (%d) active.\n",
		    FUNC9(), FUNC10());
  
		FUNC4(!FUNC15());
  
		FUNC6(FUNC8());
		FUNC19();
  
#if CONFIG_MCA
		mca_cpu_init();
#endif
  
		FUNC3();
		FUNC13();
		FUNC2();
		FUNC1();
  
		FUNC12();
  
#if CONFIG_MTRR
		mtrr_update_cpu();
#endif
		/* update CPU microcode */
		FUNC23();
	} else
	    init_param = FAST_SLAVE_INIT;

#if CONFIG_VMX
	/* resume VT operation */
	vmx_resume(FALSE);
#endif

#if CONFIG_MTRR
	if (!fast_restart)
	    pat_init();
#endif

	FUNC7();	/* not strictly necessary */

	FUNC5();	/* Sets cpu_running which starter cpu waits for */
 	FUNC22(init_param);
  
 	FUNC17("do_init_slave() returned from slave_main()");
}