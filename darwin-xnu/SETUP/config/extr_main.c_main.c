
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* build_directory ;
 int conf_list ;
 char* config_directory ;
 int * confp ;
 int * dtab ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int * freopen (char*,char*,int ) ;
 int headers () ;
 int makefile () ;
 char* malloc (unsigned int) ;
 int mkioconf () ;
 char* object_directory ;
 scalar_t__ opt ;
 int perror (char*) ;
 int profiling ;
 char* source_directory ;
 int sprintf (char*,char*,char*) ;
 int stderr ;
 int stdin ;
 scalar_t__ strlen (char*) ;
 scalar_t__ yyparse () ;

int
main(int argc, char *argv[])
{

 source_directory = "..";
 object_directory = "..";
 config_directory = (char *) 0;
 while ((argc > 1) && (argv[1][0] == '-')) {
  char *c;

  argv++; argc--;
  for (c = &argv[0][1]; *c ; c++) {
   switch (*c) {
    case 'b':
     build_directory = argv[1];
     goto check_arg;

    case 'd':
     source_directory = argv[1];
     goto check_arg;

    case 'o':
     object_directory = argv[1];
     goto check_arg;

    case 'c':
     config_directory = argv[1];

     check_arg:
      if (argv[1] == (char *) 0)
      goto usage_error;
     argv++; argc--;
     break;

    case 'p':
     profiling++;
     break;
    default:
     goto usage_error;
   }
  }
 }
 if (config_directory == (char *) 0) {
  config_directory =
   malloc((unsigned) strlen(source_directory) + 6);
  (void) sprintf(config_directory, "%s/conf", source_directory);
 }
 if (argc != 2) {
  usage_error: ;
  fprintf(stderr, "usage: config [ -bcdo dir ] [ -p ] sysname\n");
  exit(1);
 }
 if (!build_directory)
  build_directory = argv[1];
 if (freopen(argv[1], "r", stdin) == ((void*)0)) {
  perror(argv[1]);
  exit(2);
 }
 dtab = ((void*)0);
 confp = &conf_list;
 opt = 0;
 if (yyparse())
  exit(3);

 mkioconf();
 makefile();
 headers();

 return 0;
}
