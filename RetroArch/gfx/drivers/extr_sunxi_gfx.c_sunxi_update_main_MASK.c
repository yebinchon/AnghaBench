#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct sunxi_video {int pageflip_pending; int /*<<< orphan*/  pending_mutex; TYPE_2__* sunxi_disp; int /*<<< orphan*/  src_height; int /*<<< orphan*/  src_width; TYPE_1__* nextPage; int /*<<< orphan*/  src_pixels_per_line; int /*<<< orphan*/  dst_pixels_per_line; int /*<<< orphan*/  vsync_condition; } ;
struct TYPE_4__ {int /*<<< orphan*/  xres; int /*<<< orphan*/  bits_per_pixel; } ;
struct TYPE_3__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const void *frame, struct sunxi_video *_dispvars)
{
   FUNC2(_dispvars->pending_mutex);

   if (_dispvars->pageflip_pending)
      FUNC1(_dispvars->vsync_condition, _dispvars->pending_mutex);

   FUNC3(_dispvars->pending_mutex);

   /* Frame blitting */
   FUNC0(
      _dispvars->src_width,
      _dispvars->src_height,
      _dispvars->nextPage->address,
      _dispvars->dst_pixels_per_line,
      (uint16_t*)frame,
      _dispvars->src_pixels_per_line
      );

   /* Issue pageflip. Will flip on next vsync. */
   FUNC4(_dispvars->sunxi_disp, _dispvars->sunxi_disp->bits_per_pixel,
      _dispvars->nextPage->offset,
      _dispvars->src_width, _dispvars->src_height, _dispvars->sunxi_disp->xres);

   FUNC2(_dispvars->pending_mutex);
   _dispvars->pageflip_pending = true;
   FUNC3(_dispvars->pending_mutex);
}