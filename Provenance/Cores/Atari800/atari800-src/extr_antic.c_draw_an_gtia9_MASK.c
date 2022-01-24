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
typedef  int /*<<< orphan*/  UWORD ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int UBYTE ;

/* Variables and functions */
 int* ANTIC_cl ; 
 int /*<<< orphan*/ * ANTIC_lookup_gtia9 ; 
 int FUNC0 (int) ; 
 size_t C_PF3 ; 
 int GTIA_COLPF3 ; 
 int const* GTIA_pm_scanline ; 
 int L_PF3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* an_scanline ; 
 int* colour_translation_table ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int* pm_lookup_ptr ; 
 int right_border_start ; 
 int /*<<< orphan*/ * scrn_ptr ; 

__attribute__((used)) static void FUNC4(const ULONG *t_pm_scanline_ptr)
{
	int i = ((const UBYTE *) t_pm_scanline_ptr - GTIA_pm_scanline) & ~1;
	while (i < right_border_start) {
		UWORD *ptr = scrn_ptr + i;
		int pixel = (an_scanline[i] << 2) + an_scanline[i + 1];
		UBYTE pm_reg;
		FUNC2((ULONG *) ptr, ANTIC_lookup_gtia9[pixel]);
		pm_reg = GTIA_pm_scanline[i];
		if (pm_reg) {
			pm_reg = pm_lookup_ptr[pm_reg];
			if (pm_reg == L_PF3) {
#ifdef USE_COLOUR_TRANSLATION_TABLE
				WRITE_VIDEO(ptr, colour_translation_table[pixel | GTIA_COLPF3]);
#else
				FUNC1(ptr, pixel | (pixel << 8) | ANTIC_cl[C_PF3]);
#endif
			}
			else {
				FUNC1(ptr, FUNC0(pm_reg));
			}
		}
		i++;
		pm_reg = GTIA_pm_scanline[i];
		if (pm_reg) {
			pm_reg = pm_lookup_ptr[pm_reg];
			if (pm_reg == L_PF3) {
#ifdef USE_COLOUR_TRANSLATION_TABLE
				WRITE_VIDEO(ptr + 1, colour_translation_table[pixel | GTIA_COLPF3]);
#else
				FUNC1(ptr + 1, pixel | (pixel << 8) | ANTIC_cl[C_PF3]);
#endif
			}
			else {
				FUNC1(ptr + 1, FUNC0(pm_reg));
			}
		}
		i++;
	}
	FUNC3();
}