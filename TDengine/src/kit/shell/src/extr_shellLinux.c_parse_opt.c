
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * we_wordv; } ;
typedef TYPE_1__ wordexp_t ;
struct arguments {char* host; int is_use_passwd; char* password; char* timezone; char* user; char* commands; int is_raw_time; char* database; int abort; int file; } ;
struct argp_state {struct arguments* input; } ;
typedef int error_t ;


 int ARGP_ERR_UNKNOWN ;

 int atoi (char*) ;
 int configDir ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int strcpy (int ,int ) ;
 int tsMgmtShellPort ;
 int wordexp (char*,TYPE_1__*,int ) ;
 int wordfree (TYPE_1__*) ;

__attribute__((used)) static error_t parse_opt(int key, char *arg, struct argp_state *state) {


  struct arguments *arguments = state->input;
  wordexp_t full_path;

  switch (key) {
    case 'h':
      arguments->host = arg;
      break;
    case 'p':
      arguments->is_use_passwd = 1;
      if (arg) arguments->password = arg;
      break;
    case 'P':
      tsMgmtShellPort = atoi(arg);
      break;
    case 't':
      arguments->timezone = arg;
      break;
    case 'u':
      arguments->user = arg;
      break;
    case 'c':
      if (wordexp(arg, &full_path, 0) != 0) {
        fprintf(stderr, "Invalid path %s\n", arg);
        return -1;
      }
      strcpy(configDir, full_path.we_wordv[0]);
      wordfree(&full_path);
      break;
    case 's':
      arguments->commands = arg;
      break;
    case 'r':
      arguments->is_raw_time = 1;
      break;
    case 'f':
      if (wordexp(arg, &full_path, 0) != 0) {
        fprintf(stderr, "Invalid path %s\n", arg);
        return -1;
      }
      strcpy(arguments->file, full_path.we_wordv[0]);
      wordfree(&full_path);
      break;
    case 'd':
      arguments->database = arg;
      break;
    case 128:
      arguments->abort = 1;
      break;
    default:
      return ARGP_ERR_UNKNOWN;
  }
  return 0;
}
