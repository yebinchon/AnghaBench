#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void stbi_uc ;
typedef  int /*<<< orphan*/  stbi__result_info ;
struct TYPE_4__ {int w; int h; int /*<<< orphan*/  background; int /*<<< orphan*/  history; } ;
typedef  TYPE_1__ stbi__gif ;
typedef  int /*<<< orphan*/  stbi__context ;
typedef  int /*<<< orphan*/  g ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (void*,int,int,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(stbi__context *s, int *x, int *y, int *comp, int req_comp, stbi__result_info *ri)
{
   stbi_uc *u = 0;
   stbi__gif g;
   FUNC1(&g, 0, sizeof(g));

   u = FUNC3(s, &g, comp, req_comp, 0);
   if (u == (stbi_uc *) s) u = 0;  // end of animated gif marker
   if (u) {
      *x = g.w;
      *y = g.h;

      // moved conversion to after successful load so that the same
      // can be done for multiple frames. 
      if (req_comp && req_comp != 4)
         u = FUNC2(u, 4, req_comp, g.w, g.h);
   }

   // free buffers needed for multiple frame loading; 
   FUNC0(g.history);
   FUNC0(g.background); 

   return u;
}