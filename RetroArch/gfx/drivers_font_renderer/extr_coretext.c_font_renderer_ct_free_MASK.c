#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* buffer; } ;
struct TYPE_5__ {TYPE_1__ atlas; } ;
typedef  TYPE_2__ ct_font_renderer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC1(void *data)
{
   ct_font_renderer_t *handle = (ct_font_renderer_t*)data;

   if (!handle)
      return;

   FUNC0(handle->atlas.buffer);
   FUNC0(handle);
}