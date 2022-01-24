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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  pixel_t ;

/* Variables and functions */
 int /*<<< orphan*/  TITAN_BLEND_TOP ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 

pixel_t *FUNC6(u32 screen, int * w, int * h)
{
   pixel_t * bitmap;

   FUNC1();
   FUNC3(TITAN_BLEND_TOP);
   FUNC4(screen);

   if ((bitmap = (pixel_t *)FUNC5(sizeof(pixel_t), 704 * 512)) == NULL)
      return NULL;

   FUNC0(w, h);

   FUNC2(bitmap);

   return bitmap;
}