
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arguments {scalar_t__ start_time; scalar_t__ end_time; scalar_t__ arg_list_len; int * encode; scalar_t__ isDumpIn; int output; scalar_t__ all_databases; scalar_t__ databases; } ;


 int DEFAULT_DUMP_FILE ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ strcmp (int ,int ) ;

int taosCheckParam(struct arguments *arguments) {
  if (arguments->all_databases && arguments->databases) {
    fprintf(stderr, "conflict option --all-databases and --databases\n");
    return -1;
  }

  if (arguments->start_time > arguments->end_time) {
    fprintf(stderr, "start time is larger than end time\n");
    return -1;
  }
  if (arguments->arg_list_len == 0) {
    if ((!arguments->all_databases) && (!arguments->isDumpIn)) {
      fprintf(stderr, "taosdump requires parameters\n");
      return -1;
    }
  }

  if (arguments->isDumpIn && (strcmp(arguments->output, DEFAULT_DUMP_FILE) != 0)) {
    fprintf(stderr, "duplicate parameter input and output file\n");
    return -1;
  }

  if (!arguments->isDumpIn && arguments->encode != ((void*)0)) {
    fprintf(stderr, "invalid option in dump out\n");
    return -1;
  }

  return 0;
}
