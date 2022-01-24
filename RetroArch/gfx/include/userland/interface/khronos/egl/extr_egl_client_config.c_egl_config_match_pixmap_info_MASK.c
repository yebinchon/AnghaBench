#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  features; } ;
struct TYPE_4__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ KHRN_IMAGE_WRAP_T ;
typedef  int /*<<< orphan*/  KHRN_IMAGE_FORMAT_T ;
typedef  int /*<<< orphan*/  FEATURES_T ;

/* Variables and functions */
 int EGL_MAX_CONFIGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* formats ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

bool FUNC9(int id, KHRN_IMAGE_WRAP_T *image)
{
   FEATURES_T features = formats[id].features;
   KHRN_IMAGE_FORMAT_T format = image->format;

   FUNC8(id >= 0 && id < EGL_MAX_CONFIGS);

   return
      FUNC7(format)   == FUNC3(features) &&
      FUNC6(format) == FUNC2(features) &&
      FUNC5(format)  == FUNC1(features) &&
      FUNC4(format) == FUNC0(features);
}