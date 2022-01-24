#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_infop ;
struct TYPE_3__ {scalar_t__ alpha; scalar_t__ gray; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
typedef  TYPE_1__ png_color_8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1(png_structp pp, png_infop pi)
{
   /* 0 is invalid... */
   png_color_8 bad;
   bad.red = bad.green = bad.blue = bad.gray = bad.alpha = 0;
   FUNC0(pp, pi, &bad);
}