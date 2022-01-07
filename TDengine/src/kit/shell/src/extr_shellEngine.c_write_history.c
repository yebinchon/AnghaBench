
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hstart; int hend; char** hist; } ;
typedef int FILE ;


 int MAX_HISTORY_SIZE ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int get_history_path (char*) ;
 TYPE_1__ history ;
 int * stderr ;
 int tfree (char*) ;

void write_history() {
  char f_history[128];
  get_history_path(f_history);

  FILE *f = fopen(f_history, "w");
  if (f == ((void*)0)) {
    fprintf(stderr, "Opening file %s\n", f_history);
    return;
  }

  for (int i = history.hstart; i != history.hend;) {
    if (history.hist[i] != ((void*)0)) {
      fprintf(f, "%s\n", history.hist[i]);
      tfree(history.hist[i]);
    }
    i = (i + 1) % MAX_HISTORY_SIZE;
  }
  fclose(f);
}
