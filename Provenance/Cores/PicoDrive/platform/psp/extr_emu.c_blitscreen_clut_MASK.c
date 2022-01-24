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
struct Vertex {scalar_t__ u; scalar_t__ x; } ;
struct TYPE_3__ {scalar_t__ dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;

/* Variables and functions */
 int /*<<< orphan*/  GU_DIRECT ; 
 int /*<<< orphan*/  GU_PSM_5650 ; 
 int /*<<< orphan*/  GU_PSM_T8 ; 
 int /*<<< orphan*/  GU_SPRITES ; 
 int GU_TEXTURE_16BIT ; 
 int GU_TRANSFORM_2D ; 
 int GU_VERTEX_16BIT ; 
 TYPE_2__ Pico ; 
 int PicoOpt ; 
 int SLICE_WIDTH ; 
 scalar_t__ VRAMOFFS_FB0 ; 
 scalar_t__ VRAMOFFS_FB1 ; 
 scalar_t__ VRAM_FB0 ; 
 scalar_t__ VRAM_STUFF ; 
 int blit_16bit_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dynamic_palette ; 
 int fbimg_offs ; 
 struct Vertex* g_vertices ; 
 int /*<<< orphan*/  guCmdList ; 
 int /*<<< orphan*/  localPal ; 
 int /*<<< orphan*/  FUNC1 (struct Vertex*,struct Vertex*,int) ; 
 scalar_t__ need_pal_upload ; 
 scalar_t__ psp_screen ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct Vertex*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(void)
{
	int offs = fbimg_offs;
	offs += (psp_screen == VRAM_FB0) ? VRAMOFFS_FB0 : VRAMOFFS_FB1;

	FUNC9(0,0); // sync with prev
	FUNC8(GU_DIRECT, guCmdList);
	FUNC5(GU_PSM_5650, (void *)offs, 512); // point to back buffer

	if (dynamic_palette)
	{
		if (!blit_16bit_mode) { // the current mode is not 16bit
			FUNC11(GU_PSM_5650, 0, 0, 0);
			FUNC10(0,512,512,512,(char *)VRAM_STUFF + 512*240);

			blit_16bit_mode = 1;
		}
	}
	else
	{
		if (blit_16bit_mode) {
			FUNC3(GU_PSM_5650,0,0xff,0);
			FUNC11(GU_PSM_T8,0,0,0); // 8-bit image
			FUNC10(0,512,512,512,(char *)VRAM_STUFF + 16);
			blit_16bit_mode = 0;
		}

		if ((PicoOpt&0x10) && Pico.m.dirtyPal)
			FUNC0(0, 0);

		FUNC12();

		if (need_pal_upload) {
			need_pal_upload = 0;
			FUNC2((256/8), localPal); // upload 32*8 entries (256)
		}
	}

#if 1
	if (g_vertices[0].u == 0 && g_vertices[1].u == g_vertices[1].x)
	{
		struct Vertex* vertices;
		int x;

		#define SLICE_WIDTH 32
		for (x = 0; x < g_vertices[1].x; x += SLICE_WIDTH)
		{
			// render sprite
			vertices = (struct Vertex*)FUNC7(2 * sizeof(struct Vertex));
			FUNC1(vertices, g_vertices, 2 * sizeof(struct Vertex));
			vertices[0].u = vertices[0].x = x;
			vertices[1].u = vertices[1].x = x + SLICE_WIDTH;
			FUNC4(GU_SPRITES,GU_TEXTURE_16BIT|GU_VERTEX_16BIT|GU_TRANSFORM_2D,2,0,vertices);
		}
		// lprintf("listlen: %iB\n", sceGuCheckList()); // ~480 only
	}
	else
#endif
		FUNC4(GU_SPRITES,GU_TEXTURE_16BIT|GU_VERTEX_16BIT|GU_TRANSFORM_2D,2,0,g_vertices);

	FUNC6();
}