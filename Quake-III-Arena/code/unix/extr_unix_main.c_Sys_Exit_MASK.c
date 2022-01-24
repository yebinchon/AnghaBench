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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4( int ex ) {
  FUNC0();

#ifdef NDEBUG // regular behavior

  // We can't do this 
  //  as long as GL DLL's keep installing with atexit...
  //exit(ex);
  _exit(ex);
#else

  // Give me a backtrace on error exits.
  FUNC2( ex == 0 );
  FUNC3(ex);
#endif
}