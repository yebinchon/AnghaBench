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
struct vita2d_texture {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vita2d_texture*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(void *data, uintptr_t handle)
{
   struct vita2d_texture *texture = (struct vita2d_texture*)handle;
   if (!texture)
      return;

   /* TODO: We really want to defer this deletion instead,
    * but this will do for now. */
   FUNC1();
   FUNC0(texture);

   //free(texture);
}