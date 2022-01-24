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
typedef  scalar_t__ EMSCRIPTEN_RESULT ;

/* Variables and functions */
 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  emscripten_fullscreenchange_cb ; 
 int /*<<< orphan*/  emscripten_mainloop ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,double,double) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char**,int /*<<< orphan*/ *) ; 

int FUNC7(int argc, char *argv[])
{
   EMSCRIPTEN_RESULT r;

   FUNC1();

   FUNC2("#canvas", 800, 600);
   FUNC3("#canvas", 800.0, 600.0);
   FUNC5(emscripten_mainloop, 0, 0);
   FUNC6(argc, argv, NULL);

   r = FUNC4("#document", NULL, false,
      emscripten_fullscreenchange_cb);
   if (r != EMSCRIPTEN_RESULT_SUCCESS)
   {
      FUNC0(
         "[EMSCRIPTEN/CTX] failed to create fullscreen callback: %d\n", r);
   }

   return 0;
}