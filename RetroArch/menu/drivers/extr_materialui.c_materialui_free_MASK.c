#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  carr; } ;
struct TYPE_10__ {TYPE_1__ raster_block; } ;
struct TYPE_13__ {int /*<<< orphan*/  carr; } ;
struct TYPE_14__ {TYPE_5__ raster_block; } ;
struct TYPE_11__ {int /*<<< orphan*/  carr; } ;
struct TYPE_12__ {TYPE_3__ raster_block; } ;
struct TYPE_15__ {TYPE_2__ hint; TYPE_6__ list; TYPE_4__ title; } ;
struct TYPE_16__ {scalar_t__ thumbnail_path_data; TYPE_7__ font_data; } ;
typedef  TYPE_8__ materialui_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
   materialui_handle_t *mui   = (materialui_handle_t*)data;

   if (!mui)
      return;

   FUNC2(&mui->font_data.title.raster_block.carr);
   FUNC2(&mui->font_data.list.raster_block.carr);
   FUNC2(&mui->font_data.hint.raster_block.carr);

   FUNC0(NULL, NULL);

   if (mui->thumbnail_path_data)
      FUNC1(mui->thumbnail_path_data);
}