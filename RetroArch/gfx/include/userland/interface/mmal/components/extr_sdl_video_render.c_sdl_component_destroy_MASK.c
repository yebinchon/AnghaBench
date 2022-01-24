#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ queue; scalar_t__ sdl_surface; scalar_t__ sdl_overlay; scalar_t__ thread; int /*<<< orphan*/  quit; } ;
struct TYPE_10__ {int /*<<< orphan*/  input; scalar_t__ input_num; TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {TYPE_4__* module; } ;
typedef  TYPE_2__ SDL_Event ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;
typedef  TYPE_4__ MMAL_COMPONENT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  SDL_QUIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC8(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   SDL_Event event = {SDL_QUIT};

   module->quit = MMAL_TRUE;
   FUNC2(&event);
   if(module->thread)
      FUNC4(module->thread, NULL);
   if(module->sdl_overlay)
      FUNC1(module->sdl_overlay);
   if(module->sdl_surface)
      FUNC0(module->sdl_surface);
   FUNC3(SDL_INIT_VIDEO);

   if(component->input_num) FUNC5(component->input, 1);
   if(module->queue) FUNC6(module->queue);
   FUNC7(module);
   return MMAL_SUCCESS;
}