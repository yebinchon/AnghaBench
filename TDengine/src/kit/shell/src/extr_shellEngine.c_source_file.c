
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** we_wordv; } ;
typedef TYPE_1__ wordexp_t ;
typedef int TAOS ;
typedef int FILE ;


 int MAX_COMMAND_SIZE ;
 char* PROMPT_HEADER ;
 int R_OK ;
 int access (char*,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ isCommentLine (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int printf (char*,char*,char*) ;
 int shellRunCommand (int *,char*) ;
 int stderr ;
 scalar_t__ wordexp (char*,TYPE_1__*,int ) ;
 int wordfree (TYPE_1__*) ;

void source_file(TAOS *con, char *fptr) {
  wordexp_t full_path;
  int read_len = 0;
  char * cmd = malloc(MAX_COMMAND_SIZE);
  size_t cmd_len = 0;
  char * line = ((void*)0);
  size_t line_len = 0;

  if (wordexp(fptr, &full_path, 0) != 0) {
    fprintf(stderr, "ERROR: illegal file name\n");
    return;
  }

  char *fname = full_path.we_wordv[0];

  if (access(fname, R_OK) == -1) {
    fprintf(stderr, "ERROR: file %s is not readable\n", fptr);
    wordfree(&full_path);
    return;
  }

  FILE *f = fopen(fname, "r");
  if (f == ((void*)0)) {
    fprintf(stderr, "ERROR: failed to open file %s\n", fname);
    wordfree(&full_path);
    return;
  }

  while ((read_len = getline(&line, &line_len, f)) != -1) {
    if (read_len >= MAX_COMMAND_SIZE) continue;
    line[--read_len] = '\0';

    if (read_len == 0 || isCommentLine(line)) {
      continue;
    }

    if (line[read_len - 1] == '\\') {
      line[read_len - 1] = ' ';
      memcpy(cmd + cmd_len, line, read_len);
      cmd_len += read_len;
      continue;
    }

    memcpy(cmd + cmd_len, line, read_len);
    printf("%s%s\n", PROMPT_HEADER, cmd);
    shellRunCommand(con, cmd);
    memset(cmd, 0, MAX_COMMAND_SIZE);
    cmd_len = 0;
  }

  free(cmd);
  if (line) free(line);
  wordfree(&full_path);
  fclose(f);
}
