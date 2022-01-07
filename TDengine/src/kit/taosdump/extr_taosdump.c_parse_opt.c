
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * we_wordv; } ;
typedef TYPE_1__ wordexp_t ;
struct arguments {int allow_sys; char* host; char* user; char* password; int isDumpIn; char* encode; int all_databases; int databases; int schemaonly; int with_property; int abort; int arg_list_len; int * arg_list; void* data_batch; void* end_time; void* start_time; int input; int output; void* port; } ;
struct argp_state {scalar_t__ argc; scalar_t__ next; int * argv; struct arguments* input; } ;
typedef int error_t ;


 int ARGP_ERR_UNKNOWN ;


 void* atoi (char*) ;
 void* atol (char*) ;
 int configDir ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int strcpy (int ,int ) ;
 int wordexp (char*,TYPE_1__*,int ) ;
 int wordfree (TYPE_1__*) ;

__attribute__((used)) static error_t parse_opt(int key, char *arg, struct argp_state *state) {


  struct arguments *arguments = state->input;
  wordexp_t full_path;

  switch (key) {

    case 'a':
      arguments->allow_sys = 1;
      break;
    case 'h':
      arguments->host = arg;
      break;
    case 'u':
      arguments->user = arg;
      break;
    case 'p':
      arguments->password = arg;
      break;
    case 'P':
      arguments->port = atoi(arg);
      break;

    case 'o':
      if (wordexp(arg, &full_path, 0) != 0) {
        fprintf(stderr, "Invalid path %s\n", arg);
        return -1;
      }
      strcpy(arguments->output, full_path.we_wordv[0]);
      wordfree(&full_path);
      break;
    case 'i':
      arguments->isDumpIn = 1;
      if (wordexp(arg, &full_path, 0) != 0) {
        fprintf(stderr, "Invalid path %s\n", arg);
        return -1;
      }
      strcpy(arguments->input, full_path.we_wordv[0]);
      wordfree(&full_path);
      break;
    case 'c':
      if (wordexp(arg, &full_path, 0) != 0) {
        fprintf(stderr, "Invalid path %s\n", arg);
        return -1;
      }
      strcpy(configDir, full_path.we_wordv[0]);
      wordfree(&full_path);
      break;
    case 'e':
      arguments->encode = arg;
      break;

    case 'A':
      arguments->all_databases = 1;
      break;
    case 'B':
      arguments->databases = 1;
      break;

    case 's':
      arguments->schemaonly = 1;
      break;
    case 'M':
      arguments->with_property = 1;
      break;
    case 'S':

      arguments->start_time = atol(arg);
      break;
    case 'E':
      arguments->end_time = atol(arg);
      break;
    case 'N':
      arguments->data_batch = atoi(arg);
      break;
    case 128:
      arguments->abort = 1;
      break;
    case 129:
      arguments->arg_list = &state->argv[state->next - 1];
      arguments->arg_list_len = state->argc - state->next + 1;
      state->next = state->argc;
      break;

    default:
      return ARGP_ERR_UNKNOWN;
  }
  return 0;
}
