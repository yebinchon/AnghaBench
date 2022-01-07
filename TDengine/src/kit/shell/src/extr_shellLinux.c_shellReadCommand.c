
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int cmd ;
struct TYPE_16__ {char* buffer; char* command; } ;
struct TYPE_15__ {unsigned int hend; unsigned int hstart; char** hist; } ;
typedef int TAOS ;
typedef TYPE_1__ Command ;


 int MAX_COMMAND_SIZE ;
 unsigned int MAX_HISTORY_SIZE ;
 int SIGINT ;
 int backspaceChar (TYPE_1__*) ;
 scalar_t__ calloc (int,int ) ;
 int countPrefixOnes (char) ;
 int deleteChar (TYPE_1__*) ;
 int exitShell () ;
 char getchar () ;
 TYPE_12__ history ;
 int insertChar (TYPE_1__*,char*,int) ;
 int isReadyGo (TYPE_1__*) ;
 int kill (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int moveCursorLeft (TYPE_1__*) ;
 int moveCursorRight (TYPE_1__*) ;
 int positionCursorEnd (TYPE_1__*) ;
 int positionCursorHome (TYPE_1__*) ;
 int printf (char*) ;
 int resetCommand (TYPE_1__*,char*) ;
 int showOnScreen (TYPE_1__*) ;
 int sprintf (char*,char*,char*,char*) ;
 int system (char*) ;
 int taos_close (int *) ;
 int tfree (char*) ;
 int updateBuffer (TYPE_1__*) ;
 int write_history () ;

void shellReadCommand(TAOS *con, char *command) {
  unsigned hist_counter = history.hend;
  char utf8_array[10] = "\0";
  Command cmd;
  memset(&cmd, 0, sizeof(cmd));
  cmd.buffer = (char *)calloc(1, MAX_COMMAND_SIZE);
  cmd.command = (char *)calloc(1, MAX_COMMAND_SIZE);
  showOnScreen(&cmd);


  char c;
  while (1) {
    c = getchar();

    if (c < 0) {
      int count = countPrefixOnes(c);
      utf8_array[0] = c;
      for (int k = 1; k < count; k++) {
        c = getchar();
        utf8_array[k] = c;
      }
      insertChar(&cmd, utf8_array, count);
    } else if (c < '\033') {

      switch (c) {
        case 1:
          positionCursorHome(&cmd);
          break;
        case 3:
          printf("\n");
          resetCommand(&cmd, "");
          kill(0, SIGINT);
          break;
        case 4:
          printf("\n");
          taos_close(con);

          write_history();
          exitShell();
          break;
        case 5:
          positionCursorEnd(&cmd);
          break;
        case 8:
          backspaceChar(&cmd);
          break;
        case '\n':
        case '\r':
          printf("\n");
          if (isReadyGo(&cmd)) {
            sprintf(command, "%s%s", cmd.buffer, cmd.command);
            tfree(cmd.buffer);
            tfree(cmd.command);
            return;
          } else {
            updateBuffer(&cmd);
          }
          break;
        case 12:
          system("clear");
          showOnScreen(&cmd);
          break;
      }
    } else if (c == '\033') {
      c = getchar();
      switch (c) {
        case '[':
          c = getchar();
          switch (c) {
            case 'A':
              if (hist_counter != history.hstart) {
                hist_counter = (hist_counter + MAX_HISTORY_SIZE - 1) % MAX_HISTORY_SIZE;
                resetCommand(&cmd, (history.hist[hist_counter] == ((void*)0)) ? "" : history.hist[hist_counter]);
              }
              break;
            case 'B':
              if (hist_counter != history.hend) {
                int next_hist = (hist_counter + 1) % MAX_HISTORY_SIZE;

                if (next_hist != history.hend) {
                  resetCommand(&cmd, (history.hist[next_hist] == ((void*)0)) ? "" : history.hist[next_hist]);
                } else {
                  resetCommand(&cmd, "");
                }
                hist_counter = next_hist;
              }
              break;
            case 'C':
              moveCursorRight(&cmd);
              break;
            case 'D':
              moveCursorLeft(&cmd);
              break;
            case '1':
              if ((c = getchar()) == '~') {

                positionCursorHome(&cmd);
              }
              break;
            case '2':
              if ((c = getchar()) == '~') {

              }
              break;
            case '3':
              if ((c = getchar()) == '~') {

                deleteChar(&cmd);
              }
              break;
            case '4':
              if ((c = getchar()) == '~') {

                positionCursorEnd(&cmd);
              }
              break;
            case '5':
              if ((c = getchar()) == '~') {

              }
              break;
            case '6':
              if ((c = getchar()) == '~') {

              }
              break;
            case 72:

              positionCursorHome(&cmd);
              break;
            case 70:

              positionCursorEnd(&cmd);
              break;
          }
          break;
      }
    } else if (c == 0x7f) {

      backspaceChar(&cmd);
    } else {
      insertChar(&cmd, &c, 1);
    }
  }
}
