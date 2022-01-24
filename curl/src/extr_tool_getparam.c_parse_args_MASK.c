#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct OperationConfig {struct OperationConfig* next; struct OperationConfig* prev; struct GlobalConfig* global; TYPE_1__* url_list; } ;
struct GlobalConfig {int /*<<< orphan*/  errors; struct OperationConfig* last; struct OperationConfig* first; } ;
typedef  char* argv_item_t ;
struct TYPE_2__ {scalar_t__ url; } ;
typedef  scalar_t__ ParameterError ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ PARAM_ENGINES_REQUESTED ; 
 scalar_t__ PARAM_HELP_REQUESTED ; 
 scalar_t__ PARAM_MANUAL_REQUESTED ; 
 scalar_t__ PARAM_NEXT_OPERATION ; 
 scalar_t__ PARAM_NO_MEM ; 
 scalar_t__ PARAM_OK ; 
 scalar_t__ PARAM_VERSION_INFO_REQUESTED ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct OperationConfig*) ; 
 scalar_t__ FUNC1 (char*,char*,int*,struct GlobalConfig*,struct OperationConfig*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 struct OperationConfig* FUNC3 (int) ; 
 char* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

ParameterError FUNC6(struct GlobalConfig *global, int argc,
                          argv_item_t argv[])
{
  int i;
  bool stillflags;
  char *orig_opt = NULL;
  ParameterError result = PARAM_OK;
  struct OperationConfig *config = global->first;

  for(i = 1, stillflags = TRUE; i < argc && !result; i++) {
    orig_opt = argv[i];

    if(stillflags && ('-' == argv[i][0])) {
      bool passarg;
      char *flag = argv[i];

      if(!FUNC5("--", argv[i]))
        /* This indicates the end of the flags and thus enables the
           following (URL) argument to start with -. */
        stillflags = FALSE;
      else {
        char *nextarg = (i < (argc - 1)) ? argv[i + 1] : NULL;

        result = FUNC1(flag, nextarg, &passarg, global, config);
        if(result == PARAM_NEXT_OPERATION) {
          /* Reset result as PARAM_NEXT_OPERATION is only used here and not
             returned from this function */
          result = PARAM_OK;

          if(config->url_list && config->url_list->url) {
            /* Allocate the next config */
            config->next = FUNC3(sizeof(struct OperationConfig));
            if(config->next) {
              /* Initialise the newly created config */
              FUNC0(config->next);

              /* Set the global config pointer */
              config->next->global = global;

              /* Update the last config pointer */
              global->last = config->next;

              /* Move onto the new config */
              config->next->prev = config;
              config = config->next;
            }
            else
              result = PARAM_NO_MEM;
          }
        }
        else if(!result && passarg)
          i++; /* we're supposed to skip this */
      }
    }
    else {
      bool used;

      /* Just add the URL please */
      result = FUNC1((char *)"--url", argv[i], &used, global,
                            config);
    }
  }

  if(result && result != PARAM_HELP_REQUESTED &&
     result != PARAM_MANUAL_REQUESTED &&
     result != PARAM_VERSION_INFO_REQUESTED &&
     result != PARAM_ENGINES_REQUESTED) {
    const char *reason = FUNC4(result);

    if(orig_opt && FUNC5(":", orig_opt))
      FUNC2(global->errors, "option %s: %s\n", orig_opt, reason);
    else
      FUNC2(global->errors, "%s\n", reason);
  }

  return result;
}