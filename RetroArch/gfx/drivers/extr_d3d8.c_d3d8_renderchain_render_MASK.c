#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ renderchain_data; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ d3d8_video_t ;
struct TYPE_10__ {int /*<<< orphan*/  frame_count; } ;
typedef  TYPE_2__ d3d8_renderchain_t ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,void const*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(
      d3d8_video_t *d3d,
      const void *frame,
      unsigned frame_width, unsigned frame_height,
      unsigned pitch, unsigned rotation)
{
   LPDIRECT3DDEVICE8 d3dr     = (LPDIRECT3DDEVICE8)d3d->dev;
   d3d8_renderchain_t *chain = (d3d8_renderchain_t*)d3d->renderchain_data;

   FUNC0(chain, frame, frame_width, frame_height, pitch);
   FUNC2(d3d, chain, 1, frame_width, frame_height, chain->frame_count);

   FUNC1(d3d, d3dr, chain, 0, rotation);

   chain->frame_count++;

   return true;
}