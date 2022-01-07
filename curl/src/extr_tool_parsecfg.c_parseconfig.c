
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct OperationConfig {struct GlobalConfig* global; struct OperationConfig* next; struct OperationConfig* prev; TYPE_1__* url_list; } ;
struct GlobalConfig {struct OperationConfig* last; struct OperationConfig* first; } ;
struct TYPE_2__ {scalar_t__ url; } ;
typedef int FILE ;


 int Curl_safefree (char*) ;
 int DIR_CHAR ;
 int FALSE ;
 int FOPEN_READTEXT ;
 scalar_t__ ISSEP (char,int) ;
 scalar_t__ ISSPACE (char) ;
 int PARAM_ENGINES_REQUESTED ;
 int PARAM_GOT_EXTRA_PARAMETER ;
 int PARAM_HELP_REQUESTED ;
 int PARAM_MANUAL_REQUESTED ;
 int PARAM_NEXT_OPERATION ;
 int PARAM_NO_MEM ;
 int PARAM_OK ;
 int PARAM_VERSION_INFO_REQUESTED ;
 int TRUE ;
 int config_init (struct OperationConfig*) ;
 char* curl_maprintf (char*,char*,int ,...) ;
 int * execpath (char*) ;
 int fclose (int *) ;
 int * fopen (char const*,int ) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int getparameter (char*,char*,int*,struct GlobalConfig*,struct OperationConfig*) ;
 char* homedir () ;
 void* malloc (int) ;
 char* my_get_line (int *) ;
 char* param2text (int) ;
 int stderr ;
 int * stdin ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;
 int unslashquote (char*,char*) ;
 int warnf (struct GlobalConfig*,char*,char const*,int,char*,...) ;

int parseconfig(const char *filename, struct GlobalConfig *global)
{
  FILE *file = ((void*)0);
  bool usedarg = FALSE;
  int rc = 0;
  struct OperationConfig *operation = global->first;
  char *pathalloc = ((void*)0);

  if(!filename || !*filename) {


    char *home = homedir();

    if(home) {
      pathalloc = curl_maprintf("%s%s.curlrc", home, DIR_CHAR);
      if(!pathalloc) {
        free(home);
        return 1;
      }
      filename = pathalloc;
    }
    Curl_safefree(home);
  }

  if(!file && filename) {
    if(strcmp(filename, "-"))
      file = fopen(filename, FOPEN_READTEXT);
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

    while(((void*)0) != (aline = my_get_line(file))) {
      int res;
      bool alloced_param = FALSE;
      lineno++;
      line = aline;


      while(*line && ISSPACE(*line))
        line++;

      switch(*line) {
      case '#':
      case '/':
      case '\r':
      case '\n':
      case '*':
      case '\0':
        Curl_safefree(aline);
        continue;
      }


      option = line;


      dashed_option = option[0]=='-'?TRUE:FALSE;

      while(*line && !ISSPACE(*line) && !ISSEP(*line, dashed_option))
        line++;


      if(*line)
        *line++ = '\0';






      while(*line && (ISSPACE(*line) || ISSEP(*line, dashed_option)))
        line++;


      if(*line == '\"') {

        line++;
        param = malloc(strlen(line) + 1);
        if(!param) {

          Curl_safefree(aline);
          rc = 1;
          break;
        }
        alloced_param = TRUE;
        (void)unslashquote(line, param);
      }
      else {
        param = line;
        while(*line && !ISSPACE(*line))
          line++;

        if(*line) {
          *line = '\0';


          line++;

          while(*line && ISSPACE(*line))
            line++;

          switch(*line) {
          case '\0':
          case '\r':
          case '\n':
          case '#':
            break;
          default:
            warnf(operation->global, "%s:%d: warning: '%s' uses unquoted "
                  "white space in the line that may cause side-effects!\n",
                  filename, lineno, option);
          }
        }
        if(!*param)


          param = ((void*)0);
      }




      res = getparameter(option, param, &usedarg, global, operation);

      if(!res && param && *param && !usedarg)

        res = PARAM_GOT_EXTRA_PARAMETER;

      if(res == PARAM_NEXT_OPERATION) {
        if(operation->url_list && operation->url_list->url) {

          operation->next = malloc(sizeof(struct OperationConfig));
          if(operation->next) {

            config_init(operation->next);


            operation->next->global = global;


            global->last = operation->next;


            operation->next->prev = operation;
            operation = operation->next;
          }
          else
            res = PARAM_NO_MEM;
        }
      }

      if(res != PARAM_OK && res != PARAM_NEXT_OPERATION) {

        if(!strcmp(filename, "-")) {
          filename = "<stdin>";
        }
        if(res != PARAM_HELP_REQUESTED &&
           res != PARAM_MANUAL_REQUESTED &&
           res != PARAM_VERSION_INFO_REQUESTED &&
           res != PARAM_ENGINES_REQUESTED) {
          const char *reason = param2text(res);
          warnf(operation->global, "%s:%d: warning: '%s' %s\n",
                filename, lineno, option, reason);
        }
      }

      if(alloced_param)
        Curl_safefree(param);

      Curl_safefree(aline);
    }
    if(file != stdin)
      fclose(file);
  }
  else
    rc = 1;

  free(pathalloc);
  return rc;
}
