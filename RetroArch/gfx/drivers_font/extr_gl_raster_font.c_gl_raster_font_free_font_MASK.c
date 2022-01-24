#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ tex; TYPE_2__* gl; scalar_t__ font_data; TYPE_3__* font_driver; } ;
typedef  TYPE_4__ gl_raster_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* free ) (scalar_t__) ;} ;
struct TYPE_7__ {TYPE_1__* ctx_driver; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* make_current ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void *data,
      bool is_threaded)
{
   gl_raster_t *font = (gl_raster_t*)data;
   if (!font)
      return;

   if (font->font_driver && font->font_data)
      font->font_driver->free(font->font_data);

   if (is_threaded)
   {
      if (
            font->gl && 
            font->gl->ctx_driver &&
            font->gl->ctx_driver->make_current)
         font->gl->ctx_driver->make_current(true);
   }

   if (font->tex)
   {
      FUNC1(1, &font->tex);
      font->tex = 0;
   }

   FUNC0(font);
}