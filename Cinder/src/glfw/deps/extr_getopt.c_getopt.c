
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* optarg ;
 char* optcursor ;
 scalar_t__ opterr ;
 int optind ;
 int optopt ;
 char* strchr (char const*,int) ;
 scalar_t__ strcmp (char* const,char*) ;

int getopt(int argc, char* const argv[], const char* optstring) {
  int optchar = -1;
  const char* optdecl = ((void*)0);

  optarg = ((void*)0);
  opterr = 0;
  optopt = 0;


  if (optind >= argc)
    goto no_more_optchars;



  if (argv[optind] == ((void*)0))
    goto no_more_optchars;



  if (*argv[optind] != '-')
    goto no_more_optchars;



  if (strcmp(argv[optind], "-") == 0)
    goto no_more_optchars;



  if (strcmp(argv[optind], "--") == 0) {
    ++optind;
    goto no_more_optchars;
  }

  if (optcursor == ((void*)0) || *optcursor == '\0')
    optcursor = argv[optind] + 1;

  optchar = *optcursor;



  optopt = optchar;




  optdecl = strchr(optstring, optchar);
  if (optdecl) {


    if (optdecl[1] == ':') {
      optarg = ++optcursor;
      if (*optarg == '\0') {





        if (optdecl[2] != ':') {
          if (++optind < argc) {
            optarg = argv[optind];
          } else {




            optarg = ((void*)0);
            optchar = (optstring[0] == ':') ? ':' : '?';
          }
        } else {
          optarg = ((void*)0);
        }
      }

      optcursor = ((void*)0);
    }
  } else {


    optchar = '?';
  }

  if (optcursor == ((void*)0) || *++optcursor == '\0')
    ++optind;

  return optchar;

no_more_optchars:
  optcursor = ((void*)0);
  return -1;
}
