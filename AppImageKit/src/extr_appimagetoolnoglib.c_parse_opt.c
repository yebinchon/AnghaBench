
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arguments {int verbose; int list; char* dumpfile; char** args; } ;
struct argp_state {int arg_num; struct arguments* input; } ;
typedef int error_t ;


 int ARGP_ERR_UNKNOWN ;


 int argp_usage (struct argp_state*) ;

__attribute__((used)) static error_t
parse_opt (int key, char *arg, struct argp_state *state)
{
  struct arguments *arguments = state->input;

  switch (key)
    {
    case 'v':
      arguments->verbose = 1;
      break;
    case 'l':
      arguments->list = 1;
      break;
    case 'd':
      arguments->dumpfile = arg;
      break;
    case 129:
      if (state->arg_num >= 3)
 {
   argp_usage(state);
 }
      arguments->args[state->arg_num] = arg;
      break;
    case 128:
      if (state->arg_num < 1)
 {
   argp_usage (state);
 }
      break;
    default:
      return ARGP_ERR_UNKNOWN;
    }
  return 0;
}
