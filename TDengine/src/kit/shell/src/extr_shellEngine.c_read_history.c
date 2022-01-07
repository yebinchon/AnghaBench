
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hstart; size_t hend; int * hist; } ;
typedef int FILE ;


 int MAX_HISTORY_SIZE ;
 int R_OK ;
 int TSDB_FILENAME_LEN ;
 int access (char*,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int get_history_path (char*) ;
 int getline (char**,size_t*,int *) ;
 TYPE_1__ history ;
 int memset (int *,int ,int) ;
 int stderr ;
 int strdup (char*) ;

void read_history() {

  memset(history.hist, 0, sizeof(char *) * MAX_HISTORY_SIZE);
  history.hstart = 0;
  history.hend = 0;
  char * line = ((void*)0);
  size_t line_size = 0;
  int read_size = 0;

  char f_history[TSDB_FILENAME_LEN];
  get_history_path(f_history);

  if (access(f_history, R_OK) == -1) {
    return;
  }

  FILE *f = fopen(f_history, "r");
  if (f == ((void*)0)) {
    fprintf(stderr, "Opening file %s\n", f_history);
    return;
  }

  while ((read_size = getline(&line, &line_size, f)) != -1) {
    line[read_size - 1] = '\0';
    history.hist[history.hend] = strdup(line);

    history.hend = (history.hend + 1) % MAX_HISTORY_SIZE;

    if (history.hend == history.hstart) {
      history.hstart = (history.hstart + 1) % MAX_HISTORY_SIZE;
    }
  }

  free(line);
  fclose(f);
}
