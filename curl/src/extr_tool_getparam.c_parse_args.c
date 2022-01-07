
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct OperationConfig {struct OperationConfig* next; struct OperationConfig* prev; struct GlobalConfig* global; TYPE_1__* url_list; } ;
struct GlobalConfig {int errors; struct OperationConfig* last; struct OperationConfig* first; } ;
typedef char* argv_item_t ;
struct TYPE_2__ {scalar_t__ url; } ;
typedef scalar_t__ ParameterError ;


 int FALSE ;
 scalar_t__ PARAM_ENGINES_REQUESTED ;
 scalar_t__ PARAM_HELP_REQUESTED ;
 scalar_t__ PARAM_MANUAL_REQUESTED ;
 scalar_t__ PARAM_NEXT_OPERATION ;
 scalar_t__ PARAM_NO_MEM ;
 scalar_t__ PARAM_OK ;
 scalar_t__ PARAM_VERSION_INFO_REQUESTED ;
 int TRUE ;
 int config_init (struct OperationConfig*) ;
 scalar_t__ getparameter (char*,char*,int*,struct GlobalConfig*,struct OperationConfig*) ;
 int helpf (int ,char*,char const*,...) ;
 struct OperationConfig* malloc (int) ;
 char* param2text (scalar_t__) ;
 scalar_t__ strcmp (char*,char*) ;

ParameterError parse_args(struct GlobalConfig *global, int argc,
                          argv_item_t argv[])
{
  int i;
  bool stillflags;
  char *orig_opt = ((void*)0);
  ParameterError result = PARAM_OK;
  struct OperationConfig *config = global->first;

  for(i = 1, stillflags = TRUE; i < argc && !result; i++) {
    orig_opt = argv[i];

    if(stillflags && ('-' == argv[i][0])) {
      bool passarg;
      char *flag = argv[i];

      if(!strcmp("--", argv[i]))


        stillflags = FALSE;
      else {
        char *nextarg = (i < (argc - 1)) ? argv[i + 1] : ((void*)0);

        result = getparameter(flag, nextarg, &passarg, global, config);
        if(result == PARAM_NEXT_OPERATION) {


          result = PARAM_OK;

          if(config->url_list && config->url_list->url) {

            config->next = malloc(sizeof(struct OperationConfig));
            if(config->next) {

              config_init(config->next);


              config->next->global = global;


              global->last = config->next;


              config->next->prev = config;
              config = config->next;
            }
            else
              result = PARAM_NO_MEM;
          }
        }
        else if(!result && passarg)
          i++;
      }
    }
    else {
      bool used;


      result = getparameter((char *)"--url", argv[i], &used, global,
                            config);
    }
  }

  if(result && result != PARAM_HELP_REQUESTED &&
     result != PARAM_MANUAL_REQUESTED &&
     result != PARAM_VERSION_INFO_REQUESTED &&
     result != PARAM_ENGINES_REQUESTED) {
    const char *reason = param2text(result);

    if(orig_opt && strcmp(":", orig_opt))
      helpf(global->errors, "option %s: %s\n", orig_opt, reason);
    else
      helpf(global->errors, "%s\n", reason);
  }

  return result;
}
