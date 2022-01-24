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
struct TYPE_4__ {unsigned int last_width; unsigned int last_height; int /*<<< orphan*/  tex; int /*<<< orphan*/  pixel_size; int /*<<< orphan*/  tex_h; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ d3d8_renderchain_t ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE8 ;
typedef  int /*<<< orphan*/  D3DLOCKED_RECT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DLOCK_NOSYSLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void const*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
      d3d8_renderchain_t *chain,
      const void *frame,
      unsigned width, unsigned height, unsigned pitch)
{
   D3DLOCKED_RECT d3dlr;
   LPDIRECT3DDEVICE8 d3dr     = (LPDIRECT3DDEVICE8)chain->dev;

   FUNC0(chain);

   if (chain->last_width != width || chain->last_height != height)
   {
      FUNC1(chain->tex,
            0, &d3dlr, NULL, chain->tex_h, D3DLOCK_NOSYSLOCK);
      FUNC2(chain->tex,
            0, &d3dlr, NULL, chain->tex_h, D3DLOCK_NOSYSLOCK);
   }

   /* Set the texture to NULL so D3D doesn't complain about it being in use... */
   FUNC3(d3dr, 0, NULL);

   if (FUNC1(chain->tex, 0, &d3dlr, NULL, 0, 0))
   {
      FUNC4(chain->pixel_size, chain->tex,
            &d3dlr, frame, width, height, pitch);
      FUNC5(chain->tex);
   }
}