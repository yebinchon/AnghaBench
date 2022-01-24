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
typedef  int /*<<< orphan*/  uint16_t ;
struct filter_data {unsigned int phosphor_bleed; unsigned int* phosphor_bloom_565; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC7(void *data,
      uint16_t *scanline, unsigned width)
{
   unsigned x;
   struct filter_data *filt = (struct filter_data*)data;

   /* Red phosphor */
   for (x = 0; x < width; x += 2)
   {
      unsigned r = FUNC3(scanline[x]);
      unsigned r_set = FUNC1(r * filt->phosphor_bleed *
            filt->phosphor_bloom_565[r]);
      FUNC6(scanline[x + 1], r_set);
   }

   /* Green phosphor */
   for (x = 0; x < width; x++)
   {
      unsigned g = FUNC2(scanline[x]);
      unsigned g_set = FUNC1((g >> 1) + 0.5 * g *
            filt->phosphor_bleed * filt->phosphor_bloom_565[g]);
      FUNC5(scanline[x], g_set);
   }

   /* Blue phosphor */
   FUNC4(scanline[0], 0);
   for (x = 1; x < width; x += 2)
   {
      unsigned b = FUNC0(scanline[x]);
      unsigned b_set = FUNC1(b * filt->phosphor_bleed *
            filt->phosphor_bloom_565[b]);
      FUNC4(scanline[x + 1], b_set);
   }
}