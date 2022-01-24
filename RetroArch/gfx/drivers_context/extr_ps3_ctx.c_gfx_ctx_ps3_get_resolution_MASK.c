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
struct TYPE_3__ {unsigned int width; unsigned int height; } ;
typedef  TYPE_1__ CellVideoOutResolution ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(unsigned idx,
      unsigned *width, unsigned *height)
{
   CellVideoOutResolution resolution;
   FUNC0(idx, &resolution);

   *width  = resolution.width;
   *height = resolution.height;
}