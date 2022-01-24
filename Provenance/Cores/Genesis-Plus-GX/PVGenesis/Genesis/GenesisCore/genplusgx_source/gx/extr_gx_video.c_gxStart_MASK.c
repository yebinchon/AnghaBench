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
struct TYPE_2__ {int /*<<< orphan*/  view; int /*<<< orphan*/  up; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  Mtx ;

/* Variables and functions */
 int DEFAULT_FIFO_SIZE ; 
 int /*<<< orphan*/  GX_ALWAYS ; 
 int /*<<< orphan*/  GX_CLIP_DISABLE ; 
 int /*<<< orphan*/  GX_CULL_NONE ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GX_GM_1_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_PF_RGB8_Z24 ; 
 int /*<<< orphan*/  GX_PNMTX0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  GX_ZC_LINEAR ; 
 TYPE_1__ cam ; 
 int /*<<< orphan*/  gp_fifo ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(void)
{
  /*** Clear out FIFO area ***/
  FUNC11(&gp_fifo, 0, DEFAULT_FIFO_SIZE);

  /*** GX default ***/
  FUNC1(&gp_fifo, DEFAULT_FIFO_SIZE);
  FUNC8(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
  FUNC6(GX_CULL_NONE);
  FUNC4(GX_CLIP_DISABLE);
  FUNC7(GX_GM_1_0);
  FUNC9(GX_FALSE, GX_ALWAYS, GX_FALSE);
  FUNC5(GX_TRUE);
  FUNC3(GX_FALSE);

  /* Modelview */
  Mtx view;
  FUNC11 (&view, 0, sizeof (Mtx));
  FUNC10(view, &cam.pos, &cam.up, &cam.view);
  FUNC2(view, GX_PNMTX0);
  FUNC0();
}