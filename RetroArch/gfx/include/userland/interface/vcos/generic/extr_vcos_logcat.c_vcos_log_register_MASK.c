#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  env_name ;
typedef  scalar_t__ VCOS_LOG_LEVEL_T ;
struct TYPE_7__ {int want_prefix; } ;
struct TYPE_8__ {char const* name; scalar_t__ level; int /*<<< orphan*/  refcount; struct TYPE_8__* next; TYPE_1__ flags; } ;
typedef  TYPE_2__ VCOS_LOG_CAT_T ;

/* Variables and functions */
 scalar_t__ VCOS_LOG_ERROR ; 
 scalar_t__ VCOS_LOG_UNINITIALIZED ; 
 char* FUNC0 () ; 
 TYPE_2__ dflt_log_category ; 
 int /*<<< orphan*/  lock ; 
 scalar_t__ FUNC1 (scalar_t__*,char const**,char) ; 
 scalar_t__ FUNC2 (char*,int,char const**,char) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* vcos_logging_categories ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int warned_loglevel ; 

void FUNC10(const char *name, VCOS_LOG_CAT_T *category)
{
   const char *env;
   VCOS_LOG_CAT_T *i;

   category->name  = name;
   if ( category->level == VCOS_LOG_UNINITIALIZED )
   {
      category->level = VCOS_LOG_ERROR;
   }
   category->flags.want_prefix = (category != &dflt_log_category );

   FUNC8(&lock);

   /* is it already registered? */
   for (i = vcos_logging_categories; i ; i = i->next )
   {
      if (i == category)
      {
         i->refcount++;
         break;
      }
   }

   if (!i)
   {
      /* not yet registered */
      category->next = vcos_logging_categories;
      vcos_logging_categories = category;
      category->refcount++;

      FUNC7(category);
   }

   FUNC9(&lock);

   /* Check to see if this log level has been enabled. Look for
    * (<category:level>,)*
    *
    * VC_LOGLEVEL=ilcs:info,vchiq:warn
    */

   env = FUNC0();
   if (env && env[0])
   {
      do
      {
         char env_name[64];
         VCOS_LOG_LEVEL_T level;
         if (FUNC2(env_name, sizeof(env_name), &env, ':') &&
             FUNC1(&level, &env, ','))
         {
            if (FUNC3(env_name, name) == 0 || FUNC3(env_name, "*") == 0)
            {
               // we could match both * and env_name, so make sure * comes
               // first in the logging_level string
               category->level = level;
            }
         }
         else
         {
            if (!warned_loglevel)
            {
                FUNC4("VC_LOGLEVEL format invalid at %s\n", env);
                warned_loglevel = 1;
            }
            return;
         }
      } while (env[0] != '\0');
   }

   FUNC5( "Registered log category '%s' with level %s",
                  category->name,
                  FUNC6( category->level ));
}