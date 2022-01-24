#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  features; } ;
typedef  int /*<<< orphan*/  FEATURES_T ;
typedef  scalar_t__ EGLint ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* formats ; 

__attribute__((used)) static bool FUNC9(int id0, int id1, bool use_red, bool use_green, bool use_blue, bool use_alpha)
{
   FEATURES_T features0 = formats[id0].features;
   FEATURES_T features1 = formats[id1].features;

   EGLint all0 = FUNC2(features0);
   EGLint all1 = FUNC2(features1);

   EGLint multi0 = FUNC6(features0);
   EGLint multi1 = FUNC6(features1);

   EGLint depth0 = FUNC3(features0);
   EGLint depth1 = FUNC3(features1);

   EGLint stencil0 = FUNC8(features0);
   EGLint stencil1 = FUNC8(features1);

   EGLint mask0 = FUNC5(features0);
   EGLint mask1 = FUNC5(features1);

   int used0 = 0;
   int used1 = 0;

   if (use_red) {
      used0 += FUNC7(features0);
      used1 += FUNC7(features1);
   }
   if (use_green) {
      used0 += FUNC4(features0);
      used1 += FUNC4(features1);
   }
   if (use_blue) {
      used0 += FUNC1(features0);
      used1 += FUNC1(features1);
   }
   if (use_alpha) {
      used0 += FUNC0(features0);
      used1 += FUNC0(features1);
   }

   return used0 > used1    ||    (used0 == used1 &&
      (all0 < all1         ||     (all0 == all1 &&
      (multi0 < multi1     ||   (multi0 == multi1 &&
      (depth0 < depth1     ||   (depth0 == depth1 &&
      (stencil0 < stencil1 || (stencil0 == stencil1 &&
      (mask0 < mask1))))))))));
}