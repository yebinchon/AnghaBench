#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* shader_data; TYPE_4__* shader; int /*<<< orphan*/  path; int /*<<< orphan*/  data; int /*<<< orphan*/  shader_type; } ;
typedef  TYPE_2__ video_shader_ctx_init_t ;
struct TYPE_7__ {int /*<<< orphan*/  menu_driver; } ;
struct TYPE_9__ {TYPE_1__ arrays; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* init_menu_shaders ) (void*) ;void* (* init ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 () ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static bool FUNC6(video_shader_ctx_init_t *init)
{
   void            *tmp = NULL;
   settings_t *settings = FUNC1();

   if (!init->shader || !init->shader->init)
   {
      init->shader = FUNC2(init->shader_type);

      if (!init->shader)
         return false;
   }

   tmp = init->shader->init(init->data, init->path);

   if (!tmp)
      return false;

   if (FUNC3(settings->arrays.menu_driver, "xmb")
         && init->shader->init_menu_shaders)
   {
      FUNC0("Setting up menu pipeline shaders for XMB ... \n");
      init->shader->init_menu_shaders(tmp);
   }

   init->shader_data = tmp;

   return true;
}