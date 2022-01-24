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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int inited ; 

__attribute__((used)) static void FUNC7(void)
{
 FUNC5();

 #ifndef WIN32
 FUNC6(SIG_IGN);
 #endif

 if(inited&2)
  FUNC0();
 if(inited&8)
  FUNC1();
 if(inited&4)
  FUNC4();
 if(inited&1)
  FUNC3();
 if(inited&16)
  FUNC2();
 inited=0;
}