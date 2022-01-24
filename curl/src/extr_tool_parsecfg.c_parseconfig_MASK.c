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
struct OperationConfig {struct GlobalConfig* global; struct OperationConfig* next; struct OperationConfig* prev; TYPE_1__* url_list; } ;
struct GlobalConfig {struct OperationConfig* last; struct OperationConfig* first; } ;
struct TYPE_2__ {scalar_t__ url; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DIR_CHAR ; 
 int FALSE ; 
 int /*<<< orphan*/  FOPEN_READTEXT ; 
 scalar_t__ FUNC1 (char,int) ; 
 scalar_t__ FUNC2 (char) ; 
 int PARAM_ENGINES_REQUESTED ; 
 int PARAM_GOT_EXTRA_PARAMETER ; 
 int PARAM_HELP_REQUESTED ; 
 int PARAM_MANUAL_REQUESTED ; 
 int PARAM_NEXT_OPERATION ; 
 int PARAM_NO_MEM ; 
 int PARAM_OK ; 
 int PARAM_VERSION_INFO_REQUESTED ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct OperationConfig*) ; 
 char* FUNC4 (char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char*,char*,int*,struct GlobalConfig*,struct OperationConfig*) ; 
 char* FUNC11 () ; 
 void* FUNC12 (int) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct GlobalConfig*,char*,char const*,int,char*,...) ; 

int FUNC19(const char *filename, struct GlobalConfig *global)
{
  FILE *file = NULL;
  bool usedarg = FALSE;
  int rc = 0;
  struct OperationConfig *operation = global->first;
  char *pathalloc = NULL;

  if(!filename || !*filename) {
    /* NULL or no file name attempts to load .curlrc from the homedir! */

    char *home = FUNC11();    /* portable homedir finder */
#ifndef WIN32
    if(home) {
      pathalloc = FUNC4("%s%s.curlrc", home, DIR_CHAR);
      if(!pathalloc) {
        FUNC9(home);
        return 1; /* out of memory */
      }
      filename = pathalloc;
    }
#else /* Windows */
    if(home) {
      int i = 0;
      char prefix = '.';
      do {
        /* check for .curlrc then _curlrc in the home dir */
        pathalloc = curl_maprintf("%s%s%ccurlrc", home, DIR_CHAR, prefix);
        if(!pathalloc) {
          free(home);
          return 1; /* out of memory */
        }

        /* Check if the file exists - if not, try _curlrc */
        file = fopen(pathalloc, FOPEN_READTEXT);
        if(file) {
          filename = pathalloc;
          break;
        }
        prefix = '_';
      } while(++i < 2);
    }
    if(!filename) {
      /* check for .curlrc then _curlrc in the dir of the executable */
      file = execpath(".curlrc");
      if(!file)
        file = execpath("_curlrc");
    }
#endif

    FUNC0(home); /* we've used it, now free it */
  }

  if(!file && filename) { /* no need to fopen() again */
    if(FUNC15(filename, "-"))
      file = FUNC7(filename, FOPEN_READTEXT);
    else
      file = stdin;
  }

  if(file) {
    char *line;
    char *aline;
    char *option;
    char *param;
    int lineno = 0;
    bool dashed_option;

    while(NULL != (aline = FUNC13(file))) {
      int res;
      bool alloced_param = FALSE;
      lineno++;
      line = aline;

      /* line with # in the first non-blank column is a comment! */
      while(*line && FUNC2(*line))
        line++;

      switch(*line) {
      case '#':
      case '/':
      case '\r':
      case '\n':
      case '*':
      case '\0':
        FUNC0(aline);
        continue;
      }

      /* the option keywords starts here */
      option = line;

      /* the option starts with a dash? */
      dashed_option = option[0]=='-'?TRUE:FALSE;

      while(*line && !FUNC2(*line) && !FUNC1(*line, dashed_option))
        line++;
      /* ... and has ended here */

      if(*line)
        *line++ = '\0'; /* zero terminate, we have a local copy of the data */

#ifdef DEBUG_CONFIG
      fprintf(stderr, "GOT: %s\n", option);
#endif

      /* pass spaces and separator(s) */
      while(*line && (FUNC2(*line) || FUNC1(*line, dashed_option)))
        line++;

      /* the parameter starts here (unless quoted) */
      if(*line == '\"') {
        /* quoted parameter, do the quote dance */
        line++;
        param = FUNC12(FUNC16(line) + 1); /* parameter */
        if(!param) {
          /* out of memory */
          FUNC0(aline);
          rc = 1;
          break;
        }
        alloced_param = TRUE;
        (void)FUNC17(line, param);
      }
      else {
        param = line; /* parameter starts here */
        while(*line && !FUNC2(*line))
          line++;

        if(*line) {
          *line = '\0'; /* zero terminate */

          /* to detect mistakes better, see if there's data following */
          line++;
          /* pass all spaces */
          while(*line && FUNC2(*line))
            line++;

          switch(*line) {
          case '\0':
          case '\r':
          case '\n':
          case '#': /* comment */
            break;
          default:
            FUNC18(operation->global, "%s:%d: warning: '%s' uses unquoted "
                  "white space in the line that may cause side-effects!\n",
                  filename, lineno, option);
          }
        }
        if(!*param)
          /* do this so getparameter can check for required parameters.
             Otherwise it always thinks there's a parameter. */
          param = NULL;
      }

#ifdef DEBUG_CONFIG
      fprintf(stderr, "PARAM: \"%s\"\n",(param ? param : "(null)"));
#endif
      res = FUNC10(option, param, &usedarg, global, operation);

      if(!res && param && *param && !usedarg)
        /* we passed in a parameter that wasn't used! */
        res = PARAM_GOT_EXTRA_PARAMETER;

      if(res == PARAM_NEXT_OPERATION) {
        if(operation->url_list && operation->url_list->url) {
          /* Allocate the next config */
          operation->next = FUNC12(sizeof(struct OperationConfig));
          if(operation->next) {
            /* Initialise the newly created config */
            FUNC3(operation->next);

            /* Set the global config pointer */
            operation->next->global = global;

            /* Update the last operation pointer */
            global->last = operation->next;

            /* Move onto the new config */
            operation->next->prev = operation;
            operation = operation->next;
          }
          else
            res = PARAM_NO_MEM;
        }
      }

      if(res != PARAM_OK && res != PARAM_NEXT_OPERATION) {
        /* the help request isn't really an error */
        if(!FUNC15(filename, "-")) {
          filename = "<stdin>";
        }
        if(res != PARAM_HELP_REQUESTED &&
           res != PARAM_MANUAL_REQUESTED &&
           res != PARAM_VERSION_INFO_REQUESTED &&
           res != PARAM_ENGINES_REQUESTED) {
          const char *reason = FUNC14(res);
          FUNC18(operation->global, "%s:%d: warning: '%s' %s\n",
                filename, lineno, option, reason);
        }
      }

      if(alloced_param)
        FUNC0(param);

      FUNC0(aline);
    }
    if(file != stdin)
      FUNC6(file);
  }
  else
    rc = 1; /* couldn't open the file */

  FUNC9(pathalloc);
  return rc;
}