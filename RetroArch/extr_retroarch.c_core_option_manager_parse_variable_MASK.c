#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct retro_variable {char* key; char* value; } ;
struct core_option {int visible; size_t index; TYPE_3__* vals; void* key; scalar_t__ default_index; int /*<<< orphan*/  val_labels; void* desc; } ;
struct TYPE_7__ {int /*<<< orphan*/ * conf; int /*<<< orphan*/ * opts; } ;
typedef  TYPE_2__ core_option_manager_t ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_8__ {size_t size; TYPE_1__* elems; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (char const*,char*) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static bool FUNC8(
      core_option_manager_t *opt, size_t idx,
      const struct retro_variable *var,
      config_file_t *config_src)
{
   const char *val_start      = NULL;
   char *value                = NULL;
   char *desc_end             = NULL;
   char *config_val           = NULL;
   struct core_option *option = (struct core_option*)&opt->opts[idx];

   /* All options are visible by default */
   option->visible = true;

   if (!FUNC3(var->key))
      option->key             = FUNC2(var->key);
   if (!FUNC3(var->value))
      value                   = FUNC2(var->value);

   if (!FUNC3(value))
      desc_end                = FUNC7(value, "; ");

   if (!desc_end)
      goto error;

   *desc_end    = '\0';

   if (!FUNC3(value))
      option->desc    = FUNC2(value);

   val_start          = desc_end + 2;
   option->vals       = FUNC6(val_start, "|");

   if (!option->vals)
      goto error;

   /* Legacy core option interface has no concept of
    * value labels - use actual values for display purposes */
   option->val_labels = FUNC5(option->vals);

   if (!option->val_labels)
      goto error;

   /* Legacy core option interface always uses first
    * defined value as the default */
   option->default_index = 0;
   option->index         = 0;

   /* Set current config value */
   if (FUNC0(config_src ? config_src : opt->conf, option->key, &config_val))
   {
      size_t i;

      for (i = 0; i < option->vals->size; i++)
      {
         if (FUNC4(option->vals->elems[i].data, config_val))
         {
            option->index = i;
            break;
         }
      }

      FUNC1(config_val);
   }

   FUNC1(value);

   return true;

error:
   FUNC1(value);
   return false;
}