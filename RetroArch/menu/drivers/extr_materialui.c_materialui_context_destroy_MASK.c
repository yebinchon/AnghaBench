#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * font; } ;
struct TYPE_10__ {int /*<<< orphan*/ * font; } ;
struct TYPE_9__ {int /*<<< orphan*/ * font; } ;
struct TYPE_12__ {TYPE_4__ hint; TYPE_3__ list; TYPE_2__ title; } ;
struct TYPE_8__ {int /*<<< orphan*/ * list; } ;
struct TYPE_13__ {TYPE_5__ font_data; TYPE_1__ textures; } ;
typedef  TYPE_6__ materialui_handle_t ;

/* Variables and functions */
 unsigned int MUI_TEXTURE_LAST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *data)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;
   unsigned i;

   if (!mui)
      return;

   /* Free standard menu textures */
   for (i = 0; i < MUI_TEXTURE_LAST; i++)
      FUNC3(&mui->textures.list[i]);

   /* Free fonts */
   if (mui->font_data.title.font)
      FUNC2(mui->font_data.title.font);
   mui->font_data.title.font = NULL;

   if (mui->font_data.list.font)
      FUNC2(mui->font_data.list.font);
   mui->font_data.list.font = NULL;

   if (mui->font_data.hint.font)
      FUNC2(mui->font_data.hint.font);
   mui->font_data.hint.font = NULL;

   /* Free node thumbnails */
   FUNC1();

   /* Free background/wallpaper textures */
   FUNC0(mui);
}