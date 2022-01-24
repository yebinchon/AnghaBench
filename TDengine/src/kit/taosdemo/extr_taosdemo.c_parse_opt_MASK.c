#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * we_wordv; } ;
typedef  TYPE_1__ wordexp_t ;
struct arguments {char* host; char* user; char* password; char* output_file; char* database; char** datatype; char* tb_prefix; int use_metric; int insert_only; int abort; void* len_of_binary; void* num_of_CPR; void* num_of_DPT; void* num_of_tables; void* num_of_RPR; void* num_of_connections; void* mode; void* port; } ;
struct argp_state {struct arguments* input; } ;
typedef  int error_t ;

/* Variables and functions */
 int ARGP_ERR_UNKNOWN ; 
#define  ARGP_KEY_ARG 129 
#define  OPT_ABORT 128 
 int /*<<< orphan*/  TSDB_OPTION_CONFIGDIR ; 
 int /*<<< orphan*/  FUNC0 (struct argp_state*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argp_state*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static error_t FUNC11(int key, char *arg, struct argp_state *state) {
  /* Get the input argument from argp_parse, which we
     know is a pointer to our arguments structure. */
  struct arguments *arguments = state->input;
  wordexp_t full_path;
  char **sptr;
  switch (key) {
    case 'h':
      arguments->host = arg;
      break;
    case 'p':
      arguments->port = FUNC2(arg);
      break;
    case 'u':
      arguments->user = arg;
      break;
    case 'a':
      arguments->password = arg;
      break;
    case 'o':
      arguments->output_file = arg;
      break;
    case 'q':
      arguments->mode = FUNC2(arg);
      break;
    case 'c':
      arguments->num_of_connections = FUNC2(arg);
      break;
    case 'r':
      arguments->num_of_RPR = FUNC2(arg);
      break;
    case 't':
      arguments->num_of_tables = FUNC2(arg);
      break;
    case 'n':
      arguments->num_of_DPT = FUNC2(arg);
      break;
    case 'd':
      arguments->database = arg;
      break;
    case 'l':
      arguments->num_of_CPR = FUNC2(arg);
      break;
    case 'b':
      sptr = arguments->datatype;
      if (FUNC7(arg, ",") == NULL) {
        if (FUNC4(arg, "INT") != 0 && FUNC4(arg, "FLOAT") != 0 &&
            FUNC4(arg, "TINYINT") != 0 && FUNC4(arg, "BOOL") != 0 &&
            FUNC4(arg, "SMALLINT") != 0 &&
            FUNC4(arg, "BIGINT") != 0 && FUNC4(arg, "DOUBLE") != 0 &&
            FUNC4(arg, "BINARY")) {
          FUNC0(state, "Invalid data_type!");
        }
        sptr[0] = arg;
      } else {
        int index = 0;
        char *dupstr = FUNC5(arg);
        char *running = dupstr;
        char *token = FUNC6(&running, ",");
        while (token != NULL) {
          if (FUNC4(token, "INT") != 0 &&
              FUNC4(token, "FLOAT") != 0 &&
              FUNC4(token, "TINYINT") != 0 &&
              FUNC4(token, "BOOL") != 0 &&
              FUNC4(token, "SMALLINT") != 0 &&
              FUNC4(token, "BIGINT") != 0 &&
              FUNC4(token, "DOUBLE") != 0 && FUNC4(token, "BINARY")) {
            FUNC0(state, "Invalid data_type!");
          }
          sptr[index++] = token;
          token = FUNC6(&running, ", ");
        }
      }
      break;
    case 'w':
      arguments->len_of_binary = FUNC2(arg);
      break;
    case 'm':
      arguments->tb_prefix = arg;
      break;
    case 'M':
      arguments->use_metric = true;
      break;
    case 'x':
      arguments->insert_only = true;
      break;
    case 'f':
      if (FUNC9(arg, &full_path, 0) != 0) {
        FUNC3(stderr, "Invalid path %s\n", arg);
        return -1;
      }
      FUNC8(TSDB_OPTION_CONFIGDIR, full_path.we_wordv[0]);
      FUNC10(&full_path);
      break;
    case OPT_ABORT:
      arguments->abort = 1;
      break;
    case ARGP_KEY_ARG:
      /*arguments->arg_list = &state->argv[state->next-1];
      state->next = state->argc;*/
      FUNC1(state);
      break;

    default:
      return ARGP_ERR_UNKNOWN;
  }
  return 0;
}