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
struct gdi_texture {int /*<<< orphan*/ * bmp; struct gdi_texture* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gdi_texture*) ; 

__attribute__((used)) static void FUNC2(void *data, uintptr_t handle)
{
   struct gdi_texture *texture = (struct gdi_texture*)handle;

   if (!texture)
      return;

   if (texture->data)
      FUNC1(texture->data);

   if (texture->bmp)
   {
      FUNC0(texture->bmp);
      texture->bmp = NULL;
   }

   FUNC1(texture);
}