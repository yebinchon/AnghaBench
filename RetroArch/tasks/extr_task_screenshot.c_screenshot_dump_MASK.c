#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {char* shotname; char* filename; int is_idle; int is_paused; int bgr24; unsigned int height; unsigned int width; int pitch; int widgets_ready; int silence; unsigned int pixel_format_type; struct TYPE_13__* out_buffer; scalar_t__ title; int /*<<< orphan*/  callback; int /*<<< orphan*/  handler; struct TYPE_13__* state; int /*<<< orphan*/  type; int /*<<< orphan*/  history_list_enable; void* userbuf; void const* frame; } ;
typedef  TYPE_2__ uint8_t ;
struct retro_system_info {char const* library_name; } ;
struct TYPE_12__ {scalar_t__ screenshots_in_content_dir; scalar_t__ auto_screenshot_filename; int /*<<< orphan*/  history_list_enable; } ;
struct TYPE_14__ {TYPE_1__ bools; } ;
typedef  TYPE_3__ settings_t ;
typedef  TYPE_2__ screenshot_task_state_t ;
typedef  int /*<<< orphan*/  screenshot_path ;
typedef  TYPE_2__ retro_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_EXT ; 
 int /*<<< orphan*/  MSG_TAKING_SCREENSHOT ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  TASK_TYPE_BLOCKING ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct retro_system_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char const* FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 TYPE_2__* FUNC18 () ; 
 scalar_t__ FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  task_screenshot_callback ; 
 int /*<<< orphan*/  task_screenshot_handler ; 

__attribute__((used)) static bool FUNC20(
      const char *screenshot_dir,
      const char *name_base,
      const void *frame,
      unsigned width,
      unsigned height,
      int pitch,
      bool bgr24,
      void *userbuf,
      bool savestate,
      bool is_idle,
      bool is_paused,
      bool fullpath,
      bool use_thread,
      unsigned pixel_format_type)
{
   struct retro_system_info system_info;
   uint8_t *buf                   = NULL;
   settings_t *settings           = FUNC1();
   screenshot_task_state_t *state = (screenshot_task_state_t*)FUNC0(1, sizeof(*state));

   state->shotname[0]             = '\0';

   /* If fullpath is true, name_base already contains a 
    * static path + filename to save the screenshot to. */
   if (fullpath)
      FUNC16(state->filename, name_base, sizeof(state->filename));

   state->is_idle             = is_idle;
   state->is_paused           = is_paused;
   state->bgr24               = bgr24;
   state->height              = height;
   state->width               = width;
   state->pitch               = pitch;
   state->frame               = frame;
   state->userbuf             = userbuf;
#ifdef HAVE_MENU_WIDGETS
   state->widgets_ready       = menu_widgets_ready();
#else
   state->widgets_ready       = false;
#endif
   state->silence             = savestate;
   state->history_list_enable = settings->bools.history_list_enable;
   state->pixel_format_type   = pixel_format_type;

   if (!fullpath)
   {
      if (savestate)
      {
         FUNC16(state->filename,
               name_base, sizeof(state->filename));
         FUNC15(state->filename, ".png", sizeof(state->filename));
      }
      else
      {
         if (settings->bools.auto_screenshot_filename)
         {
            const char *screenshot_name = NULL;

            if (FUNC11(RARCH_PATH_CONTENT))
            {
               if (!FUNC2(&system_info))
                  return false;

               if (FUNC14(system_info.library_name))
                  screenshot_name = "RetroArch";
               else
                  screenshot_name = system_info.library_name;
            }
            else
               screenshot_name = FUNC10(name_base);

            FUNC5(state->shotname, screenshot_name,
                  IMG_EXT, sizeof(state->shotname));
         }
         else
         {
            FUNC16(state->shotname, FUNC10(name_base),
                  sizeof(state->shotname));
            FUNC15(state->shotname, ".png", sizeof(state->shotname));
         }

         if (  FUNC14(screenshot_dir) || 
               settings->bools.screenshots_in_content_dir)
         {
            char screenshot_path[PATH_MAX_LENGTH];
            screenshot_path[0]             = '\0';
            FUNC3(screenshot_path, name_base,
                  sizeof(screenshot_path));
            FUNC4(state->filename, screenshot_path,
                  state->shotname, sizeof(state->filename));
         }
         else
            FUNC4(state->filename, screenshot_dir,
                  state->shotname, sizeof(state->filename));
      }
   }

#if defined(HAVE_RPNG)
   buf = (uint8_t*)malloc(width * height * 3);
   if (!buf)
   {
      free(state);
      return false;
   }
   state->out_buffer = buf;
#endif

   if (use_thread)
   {
      retro_task_t *task = FUNC18();

      task->type        = TASK_TYPE_BLOCKING;
      task->state       = state;
      task->handler     = task_screenshot_handler;
#ifdef HAVE_MENU_WIDGETS
      task->callback    = task_screenshot_callback;
#endif
#if defined(HAVE_MENU) && defined(HAVE_MENU_WIDGETS)
      if (state->widgets_ready && !savestate)
         task_free_title(task);
      else
#endif
      {
         if (!savestate)
            task->title = FUNC13(FUNC9(MSG_TAKING_SCREENSHOT));
      }

      if (FUNC19(task))
         return true;

      /* There is already a blocking task going on */
      if (task->title)
         FUNC17(task);

      FUNC6(task);

      if (state->out_buffer)
         FUNC6(state->out_buffer);

      FUNC6(state);

      return false;
   }

   return FUNC12(state);
}