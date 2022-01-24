#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* userdata; int /*<<< orphan*/  func; } ;
typedef  TYPE_1__ task_finder_data_t ;
struct overlay {int size; int overlay_hide_in_menu; int overlay_enable; float overlay_opacity; float overlay_scale; int pos_increment; int /*<<< orphan*/  overlay_path; struct overlay* overlays; int /*<<< orphan*/  driver_rgba_support; int /*<<< orphan*/  state; int /*<<< orphan*/ * conf; } ;
struct TYPE_7__ {void* user_data; int /*<<< orphan*/  callback; struct overlay* state; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  handler; } ;
typedef  TYPE_2__ retro_task_t ;
typedef  int /*<<< orphan*/  retro_task_callback_t ;
typedef  struct overlay overlay_loader_t ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  OVERLAY_STATUS_DEFERRED_LOAD ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct overlay*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 TYPE_2__* FUNC7 () ; 
 int /*<<< orphan*/  task_overlay_finder ; 
 int /*<<< orphan*/  task_overlay_free ; 
 int /*<<< orphan*/  task_overlay_handler ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

bool FUNC11(
      retro_task_callback_t cb,
      const char *overlay_path,
      bool overlay_hide_in_menu,
      bool input_overlay_enable,
      float input_overlay_opacity,
      float input_overlay_scale,
      void *user_data)
{
   task_finder_data_t find_data;
   retro_task_t *t          = NULL;
   config_file_t *conf      = NULL;
   overlay_loader_t *loader = NULL;
   
   if (FUNC6(overlay_path))
      return false;

   /* Prevent overlay from being loaded if it already is being loaded */
   find_data.func           = task_overlay_finder;
   find_data.userdata       = (void*)overlay_path;

   if (FUNC8(&find_data))
      return false;

   loader                   = (overlay_loader_t*)FUNC0(1, sizeof(*loader));

   if (!loader)
      return false;

   if (!(conf = FUNC2(overlay_path)))
   {
      FUNC4(loader);
      return false;
   }

   if (!FUNC3(conf, "overlays", &loader->size))
   {
      /* Error - overlays varaible not defined in config. */
      FUNC1(conf);
      FUNC4(loader);
      return false;
   }

   loader->overlays         = (struct overlay*)
      FUNC0(loader->size, sizeof(*loader->overlays));

   if (!loader->overlays)
   {
      FUNC1(conf);
      FUNC4(loader);
      return false;
   }

   loader->overlay_hide_in_menu = overlay_hide_in_menu;
   loader->overlay_enable       = input_overlay_enable;
   loader->overlay_opacity      = input_overlay_opacity;
   loader->overlay_scale        = input_overlay_scale;
   loader->conf                 = conf;
   loader->state                = OVERLAY_STATUS_DEFERRED_LOAD;
   loader->pos_increment        = (loader->size / 4) ? (loader->size / 4) : 4;
#ifdef RARCH_INTERNAL
   loader->driver_rgba_support  = video_driver_supports_rgba();
#endif
   t                            = FUNC7();

   if (!t)
   {
      FUNC1(conf);
      FUNC4(loader->overlays);
      FUNC4(loader);
      return false;
   }

   loader->overlay_path         = FUNC5(overlay_path);

   t->handler                   = task_overlay_handler;
   t->cleanup                   = task_overlay_free;
   t->state                     = loader;
   t->callback                  = cb;
   t->user_data                 = user_data;

   FUNC9(t);

   return true;
}