#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  retro_task_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  display_name ;
typedef  int /*<<< orphan*/  device_type ;
struct TYPE_8__ {char* path; } ;
typedef  TYPE_1__ config_file_t ;
struct TYPE_9__ {size_t idx; char* name; } ;
typedef  TYPE_2__ autoconfig_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEVICE_CONFIGURED_IN_PORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,int*) ; 
 int /*<<< orphan*/ * input_autoconf_binds ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int input_autoconfigure_swap_override ; 
 int* input_autoconfigured ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(config_file_t *conf,
      autoconfig_params_t *params, retro_task_t *task)
{
   char msg[128], display_name[128], device_type[128];
   /* This will be the case if input driver is reinitialized.
    * No reason to spam autoconfigure messages every time. */
   bool block_osd_spam                =
#if defined(HAVE_LIBNX) && defined(HAVE_MENU_WIDGETS)
      true;
#else
      input_autoconfigured[params->idx]
      && !FUNC11(params->name);
#endif

   msg[0] = display_name[0] = device_type[0] = '\0';

   FUNC0(conf, "input_device_display_name",
         display_name, sizeof(display_name));
   FUNC0(conf, "input_device_type", device_type,
         sizeof(device_type));

   input_autoconfigured[params->idx] = true;

   FUNC2(conf,
         input_autoconf_binds[params->idx]);

   if (FUNC12(device_type, "remote"))
   {
      static bool remote_is_bound        = false;
      const char *autoconfig_str         = (FUNC11(display_name) &&
            !FUNC11(params->name)) ? params->name : (!FUNC11(display_name) ? display_name : "N/A");
      FUNC14(msg, autoconfig_str, sizeof(msg));
      FUNC13(msg, " configured.", sizeof(msg));

      if (!remote_is_bound)
      {
         FUNC15(task);
         FUNC16(task, FUNC10(msg));
      }
      remote_is_bound = true;
      if (params->idx == 0)
         input_autoconfigure_swap_override = true;
   }
   else
   {
      bool tmp                    = false;
      const char *autoconfig_str  = (FUNC11(display_name) &&
            !FUNC11(params->name))
            ? params->name : (!FUNC11(display_name) ? display_name : "N/A");

      FUNC9(msg, sizeof(msg), "%s %s #%u.",
            autoconfig_str,
            FUNC7(MSG_DEVICE_CONFIGURED_IN_PORT),
            params->idx);

      /* allow overriding the swap menu controls for player 1*/
      if (params->idx == 0)
      {
         if (FUNC1(conf, "input_swap_override", &tmp))
            input_autoconfigure_swap_override = tmp;
         else
            input_autoconfigure_swap_override = false;
      }

      if (!block_osd_spam)
      {
         FUNC15(task);
         FUNC16(task, FUNC10(msg));
      }
   }
   if (!FUNC11(display_name))
      FUNC6(params->idx, display_name);
   else
      FUNC6(params->idx, params->name);
   if (!FUNC11(conf->path))
   {
      FUNC4(params->idx, FUNC8(conf->path));
      FUNC5(params->idx, conf->path);
   }
   else
   {
      FUNC4(params->idx, "N/A");
      FUNC5(params->idx, "N/A");
   }

   FUNC3();
}