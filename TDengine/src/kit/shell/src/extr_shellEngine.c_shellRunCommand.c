
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hstart; int hend; int ** hist; } ;
typedef int TAOS ;


 int MAX_HISTORY_SIZE ;
 int REG_EXTENDED ;
 int REG_ICASE ;
 int assert (int ) ;
 int exitShell () ;
 TYPE_1__ history ;
 scalar_t__ regex_match (char*,char*,int) ;
 int shellReplaceCtrlChar (char*) ;
 int shellRunCommandOnServer (int *,char*) ;
 int source_file (int *,char*) ;
 scalar_t__ strcmp (char*,int *) ;
 int * strdup (char*) ;
 char* strtok (char*,char*) ;
 int system (char*) ;
 int taos_close (int *) ;
 int tfree (int *) ;
 int write_history () ;

void shellRunCommand(TAOS *con, char *command) {

  if (regex_match(command, "^[ \t;]*$", REG_EXTENDED)) {
    return;
  }


  if (history.hstart == history.hend ||
      history.hist[(history.hend + MAX_HISTORY_SIZE - 1) % MAX_HISTORY_SIZE] == ((void*)0) ||
      strcmp(command, history.hist[(history.hend + MAX_HISTORY_SIZE - 1) % MAX_HISTORY_SIZE]) != 0) {
    if (history.hist[history.hend] != ((void*)0)) {
      tfree(history.hist[history.hend]);
    }
    history.hist[history.hend] = strdup(command);

    history.hend = (history.hend + 1) % MAX_HISTORY_SIZE;
    if (history.hend == history.hstart) {
      history.hstart = (history.hstart + 1) % MAX_HISTORY_SIZE;
    }
  }

  shellReplaceCtrlChar(command);


  if (regex_match(command, "^[ \t]*(quit|q|exit)[ \t;]*$", REG_EXTENDED | REG_ICASE)) {
    taos_close(con);
    write_history();
    exitShell();
  } else if (regex_match(command, "^[\t ]*clear[ \t;]*$", REG_EXTENDED | REG_ICASE)) {

    system("clear");
    return;
  } else if (regex_match(command, "^[ \t]*source[\t ]+[^ ]+[ \t;]*$", REG_EXTENDED | REG_ICASE)) {

    char *c_ptr = strtok(command, " ;");
    assert(c_ptr != ((void*)0));
    c_ptr = strtok(((void*)0), " ;");
    assert(c_ptr != ((void*)0));

    source_file(con, c_ptr);
  } else {
    shellRunCommandOnServer(con, command);
  }
}
