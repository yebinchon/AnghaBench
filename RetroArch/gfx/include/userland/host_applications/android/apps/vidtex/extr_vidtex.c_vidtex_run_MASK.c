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
typedef  int /*<<< orphan*/  VIDTEX_T ;
typedef  int /*<<< orphan*/  VIDTEX_PARAMS_T ;
typedef  int /*<<< orphan*/  EGLNativeWindowType ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC3(const VIDTEX_PARAMS_T *params, EGLNativeWindowType win)
{
   VIDTEX_T *vt;
   int rv = -1;

   vt = FUNC0(win);
   if (vt)
   {
      rv = FUNC2(vt, params);
      FUNC1(vt);
   }

   return rv;
}