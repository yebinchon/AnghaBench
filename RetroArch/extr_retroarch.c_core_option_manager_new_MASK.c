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
struct retro_core_option_definition {TYPE_1__* values; scalar_t__ desc; scalar_t__ key; } ;
struct core_option {int dummy; } ;
struct TYPE_7__ {size_t size; struct core_option* opts; int /*<<< orphan*/  conf_path; void* conf; } ;
typedef  TYPE_2__ core_option_manager_t ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_6__ {scalar_t__ value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 () ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,size_t,struct retro_core_option_definition const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static core_option_manager_t *FUNC8(
      const char *conf_path, const char *src_conf_path,
      const struct retro_core_option_definition *option_defs)
{
   const struct retro_core_option_definition *option_def;
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

   /* Note: 'option_def->info == NULL' is valid */
   for (option_def = option_defs;
        option_def->key && option_def->desc && option_def->values[0].value;
        option_def++)
      size++;

   if (size == 0)
      goto error;

   opt->opts = (struct core_option*)FUNC0(size, sizeof(*opt->opts));
   if (!opt->opts)
      goto error;

   opt->size = size;
   size      = 0;

   /* Note: 'option_def->info == NULL' is valid */
   for (option_def = option_defs;
        option_def->key && option_def->desc && option_def->values[0].value;
        size++, option_def++)
   {
      if (!FUNC5(opt, size, option_def, config_src))
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