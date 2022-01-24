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
struct TYPE_4__ {int width; int height; int pixsize; int /*<<< orphan*/  screen; int /*<<< orphan*/  socket; } ;
typedef  TYPE_1__ gfx_ctx_osmesa_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *data, void *data2)
{
   gfx_ctx_osmesa_data_t *osmesa = (gfx_ctx_osmesa_data_t*)data;
   FUNC0(osmesa);
   FUNC1(osmesa);

#if 0
   write(osmesa->socket, osmesa->screen, osmesa->width * osmesa->height * osmesa->pixsize);
#endif
}