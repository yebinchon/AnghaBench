#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * list; } ;
struct TYPE_6__ {int /*<<< orphan*/ * font2; int /*<<< orphan*/ * font; int /*<<< orphan*/  savestate_thumbnail; int /*<<< orphan*/  left_thumbnail; int /*<<< orphan*/  thumbnail; TYPE_1__ textures; } ;
typedef  TYPE_2__ stripes_handle_t ;

/* Variables and functions */
 unsigned int STRIPES_TEXTURE_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *data)
{
   unsigned i;
   stripes_handle_t *stripes   = (stripes_handle_t*)data;

   if (!stripes)
      return;

   for (i = 0; i < STRIPES_TEXTURE_LAST; i++)
      FUNC3(&stripes->textures.list[i]);

   FUNC3(&stripes->thumbnail);
   FUNC3(&stripes->left_thumbnail);
   FUNC3(&stripes->savestate_thumbnail);

   FUNC2(stripes);
   FUNC1(stripes);

   FUNC0(stripes->font);
   FUNC0(stripes->font2);

   stripes->font = NULL;
   stripes->font2 = NULL;
}