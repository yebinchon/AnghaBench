
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct winsize {int ws_col; scalar_t__ ws_row; } ;
struct TYPE_3__ {int commandSize; int screenOffset; int endOffset; int command; int buffer; } ;
typedef TYPE_1__ Command ;


 char* CONTINUE_PROMPT ;
 int DOWN ;
 int EXIT_FAILURE ;
 int LEFT ;
 int MAX_COMMAND_SIZE ;
 int MB_CUR_MAX ;
 char* PROMPT_HEADER ;
 int RIGHT ;
 int TIOCGWINSZ ;
 int UP ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 scalar_t__ ioctl (int ,int ,struct winsize*) ;
 char* malloc (int ) ;
 int mbtowc (int *,char*,int ) ;
 int memset (char*,char,int ) ;
 int positionCursor (int,int ) ;
 int printf (char*,int ) ;
 int prompt_size ;
 int sprintf (char*,char*,char*,int ) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (int ,char*) ;
 int wcwidth (int ) ;

void showOnScreen(Command *cmd) {
  struct winsize w;
  if (ioctl(0, TIOCGWINSZ, &w) < 0 || w.ws_col == 0 || w.ws_row == 0) {
    fprintf(stderr, "No stream device\n");
    exit(EXIT_FAILURE);
  }

  wchar_t wc;
  int size = 0;


  char *total_string = malloc(MAX_COMMAND_SIZE);
  memset(total_string, '\0', MAX_COMMAND_SIZE);
  if (strcmp(cmd->buffer, "") == 0) {
    sprintf(total_string, "%s%s", PROMPT_HEADER, cmd->command);
  } else {
    sprintf(total_string, "%s%s", CONTINUE_PROMPT, cmd->command);
  }

  int remain_column = w.ws_col;

  for (char *str = total_string; size < cmd->commandSize + prompt_size;) {
    int ret = mbtowc(&wc, str, MB_CUR_MAX);
    if (ret < 0) break;
    size += ret;

    int width = wcwidth(wc);
    if (remain_column > width) {
      printf("%lc", wc);
      remain_column -= width;
    } else {
      if (remain_column == width) {
        printf("%lc\n\r", wc);
        remain_column = w.ws_col;
      } else {
        printf("\n\r%lc", wc);
        remain_column = w.ws_col - width;
      }
    }

    str = total_string + size;
  }

  free(total_string);
  int cursor_pos = cmd->screenOffset + prompt_size;
  int ecmd_pos = cmd->endOffset + prompt_size;

  int cursor_x = cursor_pos / w.ws_col;
  int cursor_y = cursor_pos % w.ws_col;

  int command_x = ecmd_pos / w.ws_col;
  int command_y = ecmd_pos % w.ws_col;

  positionCursor(command_y, LEFT);
  positionCursor(command_x, UP);
  positionCursor(cursor_x, DOWN);
  positionCursor(cursor_y, RIGHT);
  fflush(stdout);
}
