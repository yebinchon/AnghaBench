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
struct arguments {int allow_sys; char* host; char* user; char* password; int isDumpIn; char* encode; int all_databases; int databases; int schemaonly; int with_property; int abort; int /*<<< orphan*/  arg_list_len; int /*<<< orphan*/ * arg_list; void* data_batch; void* end_time; void* start_time; int /*<<< orphan*/  input; int /*<<< orphan*/  output; void* port; } ;
struct argp_state {scalar_t__ argc; scalar_t__ next; int /*<<< orphan*/ * argv; struct arguments* input; } ;
typedef  int error_t ;

/* Variables and functions */
 int ARGP_ERR_UNKNOWN ; 
#define  ARGP_KEY_ARG 129 
#define  OPT_ABORT 128 
 void* FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  configDir ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static error_t FUNC6(int key, char *arg, struct argp_state *state) {
  /* Get the input argument from argp_parse, which we
     know is a pointer to our arguments structure. */
  struct arguments *arguments = state->input;
  wordexp_t full_path;

  switch (key) {
    // connection option
    case 'a':
      arguments->allow_sys = true;
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
      arguments->port = FUNC0(arg);
      break;
    // output file
    case 'o':
      if (FUNC4(arg, &full_path, 0) != 0) {
        FUNC2(stderr, "Invalid path %s\n", arg);
        return -1;
      }
      FUNC3(arguments->output, full_path.we_wordv[0]);
      FUNC5(&full_path);
      break;
    case 'i':
      arguments->isDumpIn = true;
      if (FUNC4(arg, &full_path, 0) != 0) {
        FUNC2(stderr, "Invalid path %s\n", arg);
        return -1;
      }
      FUNC3(arguments->input, full_path.we_wordv[0]);
      FUNC5(&full_path);
      break;
    case 'c':
      if (FUNC4(arg, &full_path, 0) != 0) {
        FUNC2(stderr, "Invalid path %s\n", arg);
        return -1;
      }
      FUNC3(configDir, full_path.we_wordv[0]);
      FUNC5(&full_path);
      break;
    case 'e':
      arguments->encode = arg;
      break;
    // dump unit option
    case 'A':
      arguments->all_databases = true;
      break;
    case 'B':
      arguments->databases = true;
      break;
    // dump format option
    case 's':
      arguments->schemaonly = true;
      break;
    case 'M':
      arguments->with_property = true;
      break;
    case 'S':
      // parse time here.
      arguments->start_time = FUNC1(arg);
      break;
    case 'E':
      arguments->end_time = FUNC1(arg);
      break;
    case 'N':
      arguments->data_batch = FUNC0(arg);
      break;
    case OPT_ABORT:
      arguments->abort = 1;
      break;
    case ARGP_KEY_ARG:
      arguments->arg_list = &state->argv[state->next - 1];
      arguments->arg_list_len = state->argc - state->next + 1;
      state->next = state->argc;
      break;

    default:
      return ARGP_ERR_UNKNOWN;
  }
  return 0;
}