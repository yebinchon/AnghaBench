
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct winsize {int ts_cols; int ws_col; } ;
struct ttysize {int ts_cols; int ws_col; } ;
struct ProgressData {int width; int tick; int barmove; int out; int initial_size; } ;
struct OperationConfig {TYPE_2__* global; int resume_from; scalar_t__ use_resume; } ;
struct TYPE_5__ {scalar_t__ Left; scalar_t__ Right; } ;
struct TYPE_7__ {TYPE_1__ srWindow; } ;
struct TYPE_6__ {int errors; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;


 scalar_t__ GetConsoleScreenBufferInfo (scalar_t__,TYPE_3__*) ;
 scalar_t__ GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_BARLENGTH ;
 int STDIN_FILENO ;
 int STD_ERROR_HANDLE ;
 int TIOCGSIZE ;
 int TIOCGWINSZ ;
 int curl_free (char*) ;
 char* curlx_getenv (char*) ;
 int ioctl (int ,int ,struct winsize*) ;
 int memset (struct ProgressData*,int ,int) ;
 int strlen (char*) ;
 long strtol (char*,char**,int) ;

void progressbarinit(struct ProgressData *bar,
                     struct OperationConfig *config)
{
  char *colp;
  memset(bar, 0, sizeof(struct ProgressData));




  if(config->use_resume)
    bar->initial_size = config->resume_from;

  colp = curlx_getenv("COLUMNS");
  if(colp) {
    char *endptr;
    long num = strtol(colp, &endptr, 10);
    if((endptr != colp) && (endptr == colp + strlen(colp)) && (num > 20) &&
       (num < 10000))
      bar->width = (int)num;
    curl_free(colp);
  }

  if(!bar->width) {
    int cols = 0;
    bar->width = cols;
  }

  if(!bar->width)
    bar->width = 79;
  else if(bar->width > MAX_BARLENGTH)
    bar->width = MAX_BARLENGTH;

  bar->out = config->global->errors;
  bar->tick = 150;
  bar->barmove = 1;
}
