#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_shader_parameter {int /*<<< orphan*/  current; } ;
struct video_shader {int /*<<< orphan*/  num_parameters; int /*<<< orphan*/  parameters; } ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 char* FUNC5 (char*,char*,char**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

bool FUNC7(config_file_t *conf,
      struct video_shader *shader)
{
   size_t param_size     = 4096 * sizeof(char);
   const char *id        = NULL;
   char *parameters      = NULL;
   char *save            = NULL;

   if (!conf)
      return false;

   parameters            = (char*)FUNC4(param_size);

   if (!parameters)
      return false;

   parameters[0]         = '\0';

   /* Read in parameters which override the defaults. */
   if (!FUNC1(conf, "parameters",
            parameters, param_size))
   {
      FUNC3(parameters);
      return true;
   }

   for (id = FUNC5(parameters, ";", &save); id;
         id = FUNC5(NULL, ";", &save))
   {
      struct video_shader_parameter *parameter =
         (struct video_shader_parameter*)
         FUNC6(
               shader->parameters, shader->num_parameters, id);

      if (!parameter)
      {
         FUNC0("[CGP/GLSLP]: Parameter %s is set in the preset,"
               " but no shader uses this parameter, ignoring.\n", id);
         continue;
      }

      if (!FUNC2(conf, id, &parameter->current))
         FUNC0("[CGP/GLSLP]: Parameter %s is not set in preset.\n", id);
   }

   FUNC3(parameters);
   return true;
}