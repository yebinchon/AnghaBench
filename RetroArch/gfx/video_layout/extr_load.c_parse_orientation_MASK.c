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
typedef  int /*<<< orphan*/  video_layout_orientation_t ;
typedef  int /*<<< orphan*/  scope_t ;
typedef  int /*<<< orphan*/  rxml_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_LAYOUT_FLIP_X ; 
 int /*<<< orphan*/  VIDEO_LAYOUT_FLIP_Y ; 
 int /*<<< orphan*/  VIDEO_LAYOUT_ROT0 ; 
 int /*<<< orphan*/  VIDEO_LAYOUT_ROT180 ; 
 int /*<<< orphan*/  VIDEO_LAYOUT_ROT270 ; 
 int /*<<< orphan*/  VIDEO_LAYOUT_ROT90 ; 
 int /*<<< orphan*/  VIDEO_LAYOUT_SWAP_XY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static video_layout_orientation_t FUNC3(scope_t *scope, rxml_node_t *node)
{
   const char *prop;
   video_layout_orientation_t result = VIDEO_LAYOUT_ROT0;

   if ((prop = FUNC1(scope, FUNC0(node, "rotate"))))
   {
      if (FUNC2(prop, "90") == 0)
         result = VIDEO_LAYOUT_ROT90;

      else if (FUNC2(prop, "180") == 0)
         result = VIDEO_LAYOUT_ROT180;

      else if (FUNC2(prop, "270") == 0)
         result = VIDEO_LAYOUT_ROT270;
   }

   if ((prop = FUNC1(scope, FUNC0(node, "swapxy"))))
   {
      if (FUNC2(prop, "no") != 0)
         result ^= VIDEO_LAYOUT_SWAP_XY;
   }

   if ((prop = FUNC1(scope, FUNC0(node, "flipx"))))
   {
      if (FUNC2(prop, "no") != 0)
         result ^= VIDEO_LAYOUT_FLIP_X;
   }

   if ((prop = FUNC1(scope, FUNC0(node, "flipy"))))
   {
      if (FUNC2(prop, "no") != 0)
         result ^= VIDEO_LAYOUT_FLIP_Y;
   }

   return result;
}