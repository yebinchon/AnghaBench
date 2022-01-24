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
struct TYPE_3__ {scalar_t__ full_width; scalar_t__ full_height; } ;
struct TYPE_4__ {TYPE_1__ vp; scalar_t__ resize_chain; } ;
typedef  TYPE_2__ d3d11_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static bool FUNC2(void* data)
{
   bool           quit;
   d3d11_video_t* d3d11 = (d3d11_video_t*)data;

   FUNC1(&quit, &d3d11->resize_chain, &d3d11->vp.full_width, &d3d11->vp.full_height);

   if (d3d11->resize_chain && d3d11->vp.full_width != 0 && d3d11->vp.full_height != 0)
      FUNC0(&d3d11->vp.full_width, &d3d11->vp.full_height);

   return !quit;
}