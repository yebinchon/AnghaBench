#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct retro_variable {scalar_t__ value; scalar_t__ key; } ;
struct core_option {int dummy; } ;
struct TYPE_5__ {size_t size; struct core_option* opts; int /*<<< orphan*/  conf_path; void* conf; } ;
typedef  TYPE_1__ core_option_manager_t ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 () ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t,struct retro_variable const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static core_option_manager_t *FUNC8(
      const char *conf_path, const char *src_conf_path,
      const struct retro_variable *vars)
{
   const struct retro_variable *var;
   size_t size                       = 0;
   core_option_manager_t *opt        = (core_option_manager_t*)
      FUNC0(1, sizeof(*opt));
   config_file_t *config_src         = NULL;

   if (!opt)
      return NULL;

   if (!FUNC6(conf_path))
      if (!(opt->conf = FUNC3(conf_path)))
         if (!(opt->conf = FUNC2()))
            goto error;

   FUNC7(opt->conf_path, conf_path, sizeof(opt->conf_path));

   /* Load source config file, if required */
   if (!FUNC6(src_conf_path))
      config_src = FUNC3(src_conf_path);

   for (var = vars; var->key && var->value; var++)
      size++;

   if (size == 0)
      goto error;

   opt->opts = (struct core_option*)FUNC0(size, sizeof(*opt->opts));
   if (!opt->opts)
      goto error;

   opt->size = size;
   size      = 0;

   for (var = vars; var->key && var->value; size++, var++)
   {
      if (!FUNC5(opt, size, var, config_src))
         goto error;
   }

   if (config_src)
      FUNC1(config_src);

   return opt;

error:
   if (config_src)
      FUNC1(config_src);
   FUNC4(opt);
   return NULL;
}